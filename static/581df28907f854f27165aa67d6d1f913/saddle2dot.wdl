version 1.0

task Saddle2dot.pl {
  input {
    Boolean? cut
    String? name
    String e_dot_gdot
  }
  command <<<
    saddle2dot.pl \
      ~{e_dot_gdot} \
      ~{true="-cut" false="" cut} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    cut: "<Int>  Set cutoff to <Int> (default: 1000)"
    name: "Sets name of graph (default: Unknown)"
    e_dot_gdot: "circo -Tps FOO.dot > Foo.ps"
  }
}