version 1.0

task Makeidx.pl {
  input {
    Boolean? ian_p
    String? s
    String? d
    Boolean? g
    String fast_a_file
  }
  command <<<
    makeidx.pl \
      ~{fast_a_file} \
      ~{true="-ianp" false="" ian_p} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-g" false="" g}
  >>>
  parameter_meta {
    ian_p: ""
    s: ""
    d: ""
    g: ""
    fast_a_file: ""
  }
}