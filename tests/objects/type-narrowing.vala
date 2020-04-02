class Foo {
	public void manam () {
		if (this is Bar) {
			assert (this.str == "bar");
		}
		assert (((this is Bar) ? this.str : "foo") == "bar");

		if (!(this is Bar)) {
			assert_not_reached ();
		} else {
			assert (this.str == "bar");
		}
		assert ((!(this is Bar) ? "foo" : this.str) == "bar");
	}
}

class Bar : Foo {
	public string str;
	public Bar (string s) {
		str = s;
	}
}

void manam (Foo foo) {
	if (foo is Bar) {
		assert (foo.str == "bar");
	}
	assert (((foo is Bar) ? foo.str : "foo") == "bar");

	if (!(foo is Bar)) {
		assert_not_reached ();
	} else {
		assert (foo.str == "bar");
	}
	assert ((!(foo is Bar) ? "foo" : foo.str) == "bar");
}

void main() {
	var bar = new Bar ("bar");
	bar.manam ();
	manam (bar);
}
