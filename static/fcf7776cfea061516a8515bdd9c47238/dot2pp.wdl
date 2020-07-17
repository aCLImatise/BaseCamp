version 1.0

task Dot2pp {
  input {
    String? man
    String? name
    String in_file_do_tdp_ps
    String outfile_dot_pp
  }
  command <<<
    dot2pp \
      ~{in_file_do_tdp_ps} \
      ~{outfile_dot_pp} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    man: "documentation"
    name: "Sequence name"
    in_file_do_tdp_ps: ""
    outfile_dot_pp: ""
  }
}