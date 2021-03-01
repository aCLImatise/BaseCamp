version 1.0

task Dot2pp {
  input {
    String? man
    String? name
    String in_file_do_tdp_ps
  }
  command <<<
    dot2pp \
      ~{in_file_do_tdp_ps} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "documentation"
    name: "Sequence name"
    in_file_do_tdp_ps: ""
  }
  output {
    File out_stdout = stdout()
  }
}