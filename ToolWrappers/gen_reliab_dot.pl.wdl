version 1.0

task Genreliabdotpl {
  input {
    String? s
    File? a
    File? f
    Boolean? q
    Boolean? v
    String? man
    String alignment
    String help
    String reliability
  }
  command <<<
    gen_reliab_dot_pl \
      ~{alignment} \
      ~{help} \
      ~{reliability} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    a: ""
    f: ""
    q: ""
    v: ""
    man: ""
    alignment: ""
    help: ""
    reliability: ""
  }
  output {
    File out_stdout = stdout()
  }
}