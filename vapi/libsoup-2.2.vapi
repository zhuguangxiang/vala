/* libsoup-2.2.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Soup", lower_case_cprefix = "soup_")]
namespace Soup {
	[CCode (cprefix = "SOUP_ADDRESS_FAMILY_", cheader_filename = "libsoup/soup.h")]
	public enum AddressFamily {
		IPV4,
		IPV6,
	}
	[CCode (cprefix = "SOUP_AUTH_TYPE_", cheader_filename = "libsoup/soup.h")]
	public enum AuthType {
		BASIC,
		DIGEST,
	}
	[CCode (cprefix = "SOUP_ALGORITHM_", cheader_filename = "libsoup/soup.h")]
	public enum DigestAlgorithm {
		MD5,
		MD5_SESS,
	}
	[CCode (cprefix = "SOUP_HANDLER_", cheader_filename = "libsoup/soup.h")]
	public enum HandlerPhase {
		POST_REQUEST,
		PRE_BODY,
		BODY_CHUNK,
		POST_BODY,
	}
	[CCode (cprefix = "SOUP_HTTP_", cheader_filename = "libsoup/soup.h")]
	public enum HttpVersion {
		1_0,
		1_1,
	}
	[CCode (cprefix = "SOUP_STATUS_", cheader_filename = "libsoup/soup.h")]
	public enum KnownStatusCode {
		NONE,
		CANCELLED,
		CANT_RESOLVE,
		CANT_RESOLVE_PROXY,
		CANT_CONNECT,
		CANT_CONNECT_PROXY,
		SSL_FAILED,
		IO_ERROR,
		MALFORMED,
		TRY_AGAIN,
		CONTINUE,
		SWITCHING_PROTOCOLS,
		PROCESSING,
		OK,
		CREATED,
		ACCEPTED,
		NON_AUTHORITATIVE,
		NO_CONTENT,
		RESET_CONTENT,
		PARTIAL_CONTENT,
		MULTI_STATUS,
		MULTIPLE_CHOICES,
		MOVED_PERMANENTLY,
		FOUND,
		MOVED_TEMPORARILY,
		SEE_OTHER,
		NOT_MODIFIED,
		USE_PROXY,
		NOT_APPEARING_IN_THIS_PROTOCOL,
		TEMPORARY_REDIRECT,
		BAD_REQUEST,
		UNAUTHORIZED,
		PAYMENT_REQUIRED,
		FORBIDDEN,
		NOT_FOUND,
		METHOD_NOT_ALLOWED,
		NOT_ACCEPTABLE,
		PROXY_AUTHENTICATION_REQUIRED,
		PROXY_UNAUTHORIZED,
		REQUEST_TIMEOUT,
		CONFLICT,
		GONE,
		LENGTH_REQUIRED,
		PRECONDITION_FAILED,
		REQUEST_ENTITY_TOO_LARGE,
		REQUEST_URI_TOO_LONG,
		UNSUPPORTED_MEDIA_TYPE,
		REQUESTED_RANGE_NOT_SATISFIABLE,
		INVALID_RANGE,
		EXPECTATION_FAILED,
		UNPROCESSABLE_ENTITY,
		LOCKED,
		FAILED_DEPENDENCY,
		INTERNAL_SERVER_ERROR,
		NOT_IMPLEMENTED,
		BAD_GATEWAY,
		SERVICE_UNAVAILABLE,
		GATEWAY_TIMEOUT,
		HTTP_VERSION_NOT_SUPPORTED,
		INSUFFICIENT_STORAGE,
		NOT_EXTENDED,
	}
	[CCode (cprefix = "SOUP_MESSAGE_", cheader_filename = "libsoup/soup.h")]
	public enum MessageFlags {
		NO_REDIRECT,
		OVERWRITE_CHUNKS,
		EXPECT_CONTINUE,
	}
	[CCode (cprefix = "SOUP_MESSAGE_STATUS_", cheader_filename = "libsoup/soup.h")]
	public enum MessageStatus {
		IDLE,
		QUEUED,
		CONNECTING,
		RUNNING,
		FINISHED,
	}
	[CCode (cprefix = "SOUP_METHOD_ID_", cheader_filename = "libsoup/soup.h")]
	public enum MethodId {
		UNKNOWN,
		POST,
		GET,
		HEAD,
		OPTIONS,
		PUT,
		MOVE,
		COPY,
		DELETE,
		TRACE,
		CONNECT,
		MKCOL,
		PROPPATCH,
		PROPFIND,
		PATCH,
		LOCK,
		UNLOCK,
	}
	[CCode (cprefix = "SOUP_BUFFER_", cheader_filename = "libsoup/soup.h")]
	public enum Ownership {
		SYSTEM_OWNED,
		USER_OWNED,
		STATIC,
	}
	[CCode (cprefix = "SOUP_SOCKET_", cheader_filename = "libsoup/soup.h")]
	public enum SocketIOStatus {
		OK,
		WOULD_BLOCK,
		EOF,
		ERROR,
	}
	[CCode (cprefix = "SOUP_STATUS_CLASS_", cheader_filename = "libsoup/soup.h")]
	public enum StatusClass {
		TRANSPORT_ERROR,
		INFORMATIONAL,
		SUCCESS,
		REDIRECT,
		CLIENT_ERROR,
		SERVER_ERROR,
	}
	[CCode (cprefix = "SOUP_TRANSFER_", cheader_filename = "libsoup/soup.h")]
	public enum TransferEncoding {
		UNKNOWN,
		CHUNKED,
		CONTENT_LENGTH,
		BYTERANGES,
		NONE,
		EOF,
	}
	[CCode (cprefix = "SOUP_XMLRPC_VALUE_TYPE_", cheader_filename = "libsoup/soup.h")]
	public enum XmlrpcValueType {
		BAD,
		INT,
		BOOLEAN,
		STRING,
		DOUBLE,
		DATETIME,
		BASE64,
		STRUCT,
		ARRAY,
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class DataBuffer {
		public Soup.Ownership owner;
		public weak string body;
		public uint length;
	}
	[CCode (free_function = "soup_message_queue_destroy", cheader_filename = "libsoup/soup.h")]
	public class MessageQueue {
		public void append (Soup.Message msg);
		public weak Soup.Message first (Soup.MessageQueueIter iter);
		public void free_iter (Soup.MessageQueueIter iter);
		public MessageQueue ();
		public weak Soup.Message next (Soup.MessageQueueIter iter);
		public weak Soup.Message remove (Soup.MessageQueueIter iter);
		public void remove_message (Soup.Message msg);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class MessageQueueIter {
		public weak GLib.List cur;
		public weak GLib.List next;
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Protocol {
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerAuthBasic {
		public Soup.AuthType type;
		public weak string user;
		public weak string passwd;
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerAuthContext {
		public uint types;
		public Soup.ServerAuthCallbackFn callback;
		public pointer user_data;
		public pointer basic_info;
		public pointer digest_info;
		public void challenge (Soup.Message msg, string header_name);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerAuthDigest {
		public Soup.AuthType type;
		public Soup.DigestAlgorithm algorithm;
		public bool integrity;
		public weak string realm;
		public weak string user;
		public weak string nonce;
		public int nonce_count;
		public weak string cnonce;
		public weak string digest_uri;
		public weak string digest_response;
		public weak string request_method;
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerContext {
		public weak Soup.Message msg;
		public weak string path;
		public Soup.MethodId method_id;
		public weak Soup.ServerAuth auth;
		public weak Soup.Server server;
		public weak Soup.ServerHandler handler;
		public weak Soup.Socket sock;
		public weak Soup.Address get_client_address ();
		public weak string get_client_host ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerHandler {
		public weak string path;
		public weak Soup.ServerAuthContext auth_ctx;
		public Soup.ServerCallbackFn callback;
		public Soup.ServerUnregisterFn unregister;
		public pointer user_data;
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class SoapParameter {
		public weak Soup.SoapParameter get_first_child ();
		public weak Soup.SoapParameter get_first_child_by_name (string name);
		public int get_int_value ();
		public weak string get_name ();
		public weak Soup.SoapParameter get_next_child ();
		public weak Soup.SoapParameter get_next_child_by_name (string name);
		public weak string get_property (string prop_name);
		public weak string get_string_value ();
	}
	[CCode (copy_function = "soup_uri_copy", cheader_filename = "libsoup/soup.h")]
	public class Uri {
		public weak Soup.Protocol protocol;
		public weak string user;
		public weak string passwd;
		public weak string host;
		public uint port;
		public weak string path;
		public weak string query;
		public weak string fragment;
		public bool broken_encoding;
		public weak Soup.Uri copy ();
		public weak Soup.Uri copy_root ();
		public static void decode (string part);
		public static weak string encode (string part, string escape_extra);
		public bool equal (Soup.Uri uri2);
		public Uri (string uri_string);
		public Uri.with_base (Soup.Uri @base, string uri_string);
		public weak string to_string (bool just_path);
		public bool uses_default_port ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class XmlrpcValue {
		public bool array_get_iterator (out weak Soup.XmlrpcValueArrayIterator iter);
		public void dump ();
		public bool get_base64 (out weak GLib.ByteArray data);
		public bool get_boolean (bool b);
		public bool get_datetime (ulong timeval);
		public bool get_double (double b);
		public bool get_int (long i);
		public bool get_string (out weak string str);
		public bool get_struct (GLib.HashTable table);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class XmlrpcValueArrayIterator {
		public bool get_value (out weak Soup.XmlrpcValue value);
		public weak Soup.XmlrpcValueArrayIterator next ();
		public weak Soup.XmlrpcValueArrayIterator prev ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Address : GLib.Object {
		public weak string get_name ();
		public weak string get_physical ();
		public uint get_port ();
		public pointer get_sockaddr (int len);
		public Address (string name, uint port);
		public Address.any (Soup.AddressFamily family, uint port);
		public void resolve_async (Soup.AddressCallback callback, pointer user_data);
		public void resolve_async_full (GLib.MainContext async_context, Soup.AddressCallback callback, pointer user_data);
		public uint resolve_sync ();
		public signal void dns_result (int status);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Connection : GLib.Object {
		public void connect_async (Soup.ConnectionCallback callback, pointer user_data);
		public uint connect_sync ();
		public void disconnect ();
		public bool is_in_use ();
		public ulong last_used ();
		public Connection (string propname1);
		public void release ();
		public void reserve ();
		public virtual void send_request (Soup.Message req);
		[NoAccessorMethod]
		public weak pointer async_context { get; construct; }
		[NoAccessorMethod]
		public weak pointer message_filter { get; set; }
		[NoAccessorMethod]
		public weak pointer origin_uri { get; construct; }
		[NoAccessorMethod]
		public weak pointer proxy_uri { get; construct; }
		[NoAccessorMethod]
		public weak pointer ssl_creds { get; construct; }
		[NoAccessorMethod]
		public weak uint timeout { get; set; }
		[HasEmitter]
		public signal void authenticate (Soup.Message p0, string auth_type, string auth_realm, pointer username, pointer password);
		public signal void connect_result (int p0);
		public signal void disconnected ();
		[HasEmitter]
		public signal void reauthenticate (Soup.Message p0, string auth_type, string auth_realm, pointer username, pointer password);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Message : GLib.Object {
		public weak string method;
		public uint status_code;
		public weak string reason_phrase;
		public weak Soup.DataBuffer request;
		public weak GLib.HashTable request_headers;
		public weak Soup.DataBuffer response;
		public weak GLib.HashTable response_headers;
		public Soup.MessageStatus status;
		public void add_chunk (Soup.Ownership owner, string body, uint length);
		public void add_final_chunk ();
		public void add_handler (Soup.HandlerPhase phase, Soup.MessageCallbackFn handler_cb, pointer user_data);
		public static void add_header (GLib.HashTable hash, string name, string value);
		public void add_header_handler (string header, Soup.HandlerPhase phase, Soup.MessageCallbackFn handler_cb, pointer user_data);
		public void add_status_class_handler (Soup.StatusClass status_class, Soup.HandlerPhase phase, Soup.MessageCallbackFn handler_cb, pointer user_data);
		public void add_status_code_handler (uint status_code, Soup.HandlerPhase phase, Soup.MessageCallbackFn handler_cb, pointer user_data);
		public static void clear_headers (GLib.HashTable hash);
		public uint get_flags ();
		public static weak string get_header (GLib.HashTable hash, string name);
		public static weak GLib.SList get_header_list (GLib.HashTable hash, string name);
		public Soup.HttpVersion get_http_version ();
		public Soup.TransferEncoding get_request_encoding (uint content_length);
		public Soup.TransferEncoding get_response_encoding (uint content_length);
		public weak Soup.Uri get_uri ();
		public bool io_in_progress ();
		public void io_pause ();
		public void io_stop ();
		public void io_unpause ();
		public bool is_keepalive ();
		public Message (string method, string uri_string);
		public Message.from_uri (string method, Soup.Uri uri);
		public weak Soup.DataBuffer pop_chunk ();
		public void read_request (Soup.Socket sock);
		public void remove_handler (Soup.HandlerPhase phase, Soup.MessageCallbackFn handler_cb, pointer user_data);
		public static void remove_header (GLib.HashTable hash, string name);
		public void send_request (Soup.Socket sock, bool is_via_proxy);
		public void set_flags (uint flags);
		public void set_http_version (Soup.HttpVersion version);
		public void set_request (string content_type, Soup.Ownership req_owner, string req_body, ulong req_length);
		public void set_response (string content_type, Soup.Ownership resp_owner, string resp_body, ulong resp_length);
		public void set_status (uint status_code);
		public void set_status_full (uint status_code, string reason_phrase);
		public void set_uri (Soup.Uri uri);
		[HasEmitter]
		public signal void finished ();
		[HasEmitter]
		public signal void got_body ();
		[HasEmitter]
		public signal void got_chunk ();
		[HasEmitter]
		public signal void got_headers ();
		[HasEmitter]
		public signal void got_informational ();
		[HasEmitter]
		public signal void restarted ();
		[HasEmitter]
		public signal void wrote_body ();
		[HasEmitter]
		public signal void wrote_chunk ();
		[HasEmitter]
		public signal void wrote_headers ();
		[HasEmitter]
		public signal void wrote_informational ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Server : GLib.Object {
		public void add_handler (string path, Soup.ServerAuthContext auth_ctx, Soup.ServerCallbackFn callback, Soup.ServerUnregisterFn unreg, pointer data);
		public weak GLib.MainContext get_async_context ();
		public weak Soup.ServerHandler get_handler (string path);
		public weak Soup.Socket get_listener ();
		public uint get_port ();
		public weak Soup.Protocol get_protocol ();
		public weak GLib.SList list_handlers ();
		public Server (string optname1, ...);
		public void quit ();
		public void remove_handler (string path);
		public void run ();
		public void run_async ();
		[NoAccessorMethod]
		public weak pointer async_context { get; construct; }
		[NoAccessorMethod]
		public weak Soup.Address @interface { get; construct; }
		[NoAccessorMethod]
		public weak uint port { get; construct; }
		[NoAccessorMethod]
		public weak string ssl_cert_file { get; construct; }
		[NoAccessorMethod]
		public weak string ssl_key_file { get; construct; }
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerMessage : Soup.Message {
		public void finish ();
		public Soup.TransferEncoding get_encoding ();
		public weak Soup.Server get_server ();
		public bool is_finished ();
		public bool is_started ();
		public ServerMessage (Soup.Server server);
		public void set_encoding (Soup.TransferEncoding encoding);
		public void start ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Session : GLib.Object, Soup.MessageFilter {
		public weak Soup.MessageQueue queue;
		public void abort ();
		public void add_filter (Soup.MessageFilter filter);
		public virtual void cancel_message (Soup.Message msg);
		public weak GLib.MainContext get_async_context ();
		public weak Soup.Connection get_connection (Soup.Message msg, bool try_pruning, bool is_new);
		public virtual void queue_message (Soup.Message msg, Soup.MessageCallbackFn callback, pointer user_data);
		public void remove_filter (Soup.MessageFilter filter);
		public virtual void requeue_message (Soup.Message msg);
		public virtual uint send_message (Soup.Message msg);
		public bool try_prune_connection ();
		[NoAccessorMethod]
		public weak pointer async_context { get; construct; }
		[NoAccessorMethod]
		public weak int max_conns { get; set; }
		[NoAccessorMethod]
		public weak int max_conns_per_host { get; set; }
		[NoAccessorMethod]
		public weak pointer proxy_uri { get; set; }
		[NoAccessorMethod]
		public weak string ssl_ca_file { get; set; }
		[NoAccessorMethod]
		public weak uint timeout { get; set; }
		[NoAccessorMethod]
		public weak bool use_ntlm { get; set; }
		public signal void authenticate (Soup.Message p0, string auth_type, string auth_realm, pointer username, pointer password);
		public signal void reauthenticate (Soup.Message p0, string auth_type, string auth_realm, pointer username, pointer password);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class SessionAsync : Soup.Session, Soup.MessageFilter {
		public SessionAsync ();
		public SessionAsync.with_options (string optname1);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class SessionSync : Soup.Session, Soup.MessageFilter {
		public SessionSync ();
		public SessionSync.with_options (string optname1);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class Socket : GLib.Object {
		public static weak Soup.Socket client_new_async (string hostname, uint port, pointer ssl_creds, Soup.SocketCallback callback, pointer user_data);
		public static weak Soup.Socket client_new_sync (string hostname, uint port, pointer ssl_creds, uint status_ret);
		public uint connect (Soup.Address remote_addr);
		public void disconnect ();
		public weak Soup.Address get_local_address ();
		public weak Soup.Address get_remote_address ();
		public bool is_connected ();
		public bool listen (Soup.Address local_addr);
		public Socket (string optname1);
		public Soup.SocketIOStatus read (pointer buffer, ulong len, ulong nread);
		public Soup.SocketIOStatus read_until (pointer buffer, ulong len, pointer boundary, ulong boundary_len, ulong nread, bool got_boundary);
		public static weak Soup.Socket server_new (Soup.Address local_addr, pointer ssl_creds, Soup.SocketListenerCallback callback, pointer user_data);
		public bool start_proxy_ssl (string ssl_host);
		public bool start_ssl ();
		public Soup.SocketIOStatus write (pointer buffer, ulong len, ulong nwrote);
		[NoAccessorMethod]
		public weak pointer async_context { get; construct; }
		[NoAccessorMethod]
		public weak bool cloexec { get; set; }
		[NoAccessorMethod]
		public weak bool is_server { get; }
		[NoAccessorMethod]
		public weak bool nodelay { get; set; }
		[NoAccessorMethod]
		public weak bool non_blocking { get; set; }
		[NoAccessorMethod]
		public weak bool reuseaddr { get; set; }
		[NoAccessorMethod]
		public weak pointer ssl_creds { get; set; }
		[NoAccessorMethod]
		public weak uint timeout { get; set; }
		public signal void connect_result (int p0);
		public signal void disconnected ();
		public signal void new_connection (Soup.Socket p0);
		public signal void readable ();
		public signal void writable ();
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public class ServerAuth {
		public Soup.AuthType type;
		public weak Soup.ServerAuthBasic basic;
		public weak Soup.ServerAuthDigest digest;
		public bool check_passwd (string passwd);
		public weak string get_user ();
		public ServerAuth (Soup.ServerAuthContext auth_ctx, GLib.SList auth_hdrs, Soup.Message msg);
	}
	[CCode (cheader_filename = "libsoup/soup.h")]
	public interface MessageFilter {
		public abstract void setup_message (Soup.Message msg);
	}
	public static delegate void AddressCallback (Soup.Address addr, uint status, pointer data);
	public static delegate void ConnectionCallback (Soup.Connection conn, uint status, pointer data);
	public static delegate void MessageCallbackFn (Soup.Message req, pointer user_data);
	public static delegate bool ServerAuthCallbackFn (Soup.ServerAuthContext auth_ctx, Soup.ServerAuth auth, Soup.Message msg, pointer data);
	public static delegate void ServerCallbackFn (Soup.ServerContext context, Soup.Message msg, pointer user_data);
	public static delegate void ServerUnregisterFn (Soup.Server server, Soup.ServerHandler handler, pointer user_data);
	public static delegate void SocketCallback (Soup.Socket sock, uint status, pointer user_data);
	public static delegate void SocketListenerCallback (Soup.Socket listener, Soup.Socket sock, pointer user_data);
	public const int ADDRESS_ANY_PORT;
	public const string CONNECTION_ASYNC_CONTEXT;
	public const int CONNECTION_H;
	public const string CONNECTION_MESSAGE_FILTER;
	public const string CONNECTION_ORIGIN_URI;
	public const string CONNECTION_PROXY_URI;
	public const string CONNECTION_SSL_CREDENTIALS;
	public const string CONNECTION_TIMEOUT;
	public const int DATE_H;
	public const int H;
	public const int HEADERS_H;
	public const int MESSAGE_FILTER_H;
	public const int MESSAGE_H;
	public const int MESSAGE_QUEUE_H;
	public const string METHOD_CONNECT;
	public const string METHOD_COPY;
	public const string METHOD_DELETE;
	public const string METHOD_GET;
	public const int METHOD_H;
	public const string METHOD_HEAD;
	public const string METHOD_LOCK;
	public const string METHOD_MKCOL;
	public const string METHOD_MOVE;
	public const string METHOD_OPTIONS;
	public const string METHOD_PATCH;
	public const string METHOD_POST;
	public const string METHOD_PROPFIND;
	public const string METHOD_PROPPATCH;
	public const string METHOD_PUT;
	public const string METHOD_TRACE;
	public const string METHOD_UNLOCK;
	public const int MISC_H;
	public const string SERVER_ASYNC_CONTEXT;
	public const int SERVER_AUTH_H;
	public const int SERVER_H;
	public const string SERVER_INTERFACE;
	public const int SERVER_MESSAGE_H;
	public const string SERVER_PORT;
	public const string SERVER_SSL_CERT_FILE;
	public const string SERVER_SSL_KEY_FILE;
	public const string SESSION_ASYNC_CONTEXT;
	public const int SESSION_ASYNC_H;
	public const int SESSION_H;
	public const string SESSION_MAX_CONNS;
	public const string SESSION_MAX_CONNS_PER_HOST;
	public const string SESSION_PROXY_URI;
	public const string SESSION_SSL_CA_FILE;
	public const int SESSION_SYNC_H;
	public const string SESSION_TIMEOUT;
	public const string SESSION_USE_NTLM;
	public const int SOAP_MESSAGE_H;
	public const string SOCKET_ASYNC_CONTEXT;
	public const string SOCKET_FLAG_CLOEXEC;
	public const string SOCKET_FLAG_NODELAY;
	public const string SOCKET_FLAG_NONBLOCKING;
	public const string SOCKET_FLAG_REUSEADDR;
	public const int SOCKET_H;
	public const string SOCKET_IS_SERVER;
	public const string SOCKET_SSL_CREDENTIALS;
	public const string SOCKET_TIMEOUT;
	public const int STATUS_H;
	public const int TYPES_H;
	public const int URI_H;
	public static weak GLib.Source add_idle (GLib.MainContext async_context, GLib.SourceFunc function, pointer data);
	public static weak GLib.Source add_timeout (GLib.MainContext async_context, uint interval, GLib.SourceFunc function, pointer data);
	public static weak string base64_decode (string text, int out_len);
	[NoArrayLength]
	public static int base64_decode_step (uchar[] @in, int len, uchar[] @out, int state, uint save);
	public static weak string base64_encode (string text, int len);
	[NoArrayLength]
	public static int base64_encode_close (uchar[] @in, int inlen, bool break_lines, uchar[] @out, int state, int save);
	[NoArrayLength]
	public static int base64_encode_step (uchar[] @in, int len, bool break_lines, uchar[] @out, int state, int save);
	public static weak string date_generate (ulong when);
	public static ulong date_iso8601_parse (string timestamp);
	public static ulong date_parse (string timestamp);
	public static void gmtime (ulong when, pointer tm);
	public static weak string header_param_copy_token (GLib.HashTable tokens, string t);
	public static weak string header_param_decode_token (out weak string @in);
	public static void header_param_destroy_hash (GLib.HashTable table);
	public static weak GLib.HashTable header_param_parse_list (string header);
	public static bool headers_parse_request (string str, int len, GLib.HashTable dest, out weak string req_method, out weak string req_path, Soup.HttpVersion ver);
	public static bool headers_parse_response (string str, int len, GLib.HashTable dest, Soup.HttpVersion ver, uint status_code, out weak string reason_phrase);
	public static bool headers_parse_status_line (string status_line, Soup.HttpVersion ver, uint status_code, out weak string reason_phrase);
	public static Soup.MethodId method_get_id (string method);
	public static uint signal_connect_once (pointer instance, string detailed_signal, GLib.Callback c_handler, pointer data);
	public static weak string status_get_phrase (uint status_code);
	public static bool str_case_equal (pointer v1, pointer v2);
	public static uint str_case_hash (pointer key);
}
