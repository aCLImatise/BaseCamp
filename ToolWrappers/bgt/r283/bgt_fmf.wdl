version 1.0

task BgtFmf {
  input {
    Boolean? load_entire_fmf
    Boolean? only_output_name
    Boolean? mn
    String fmf
    String in_dot_fmf
    String? condition
  }
  command <<<
    bgt fmf \
      ~{fmf} \
      ~{in_dot_fmf} \
      ~{condition} \
      ~{if (load_entire_fmf) then "-m" else ""} \
      ~{if (only_output_name) then "-n" else ""} \
      ~{if (mn) then "-mn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    load_entire_fmf: "load the entire FMF into RAM"
    only_output_name: "only output the row name (the 1st column)"
    mn: ""
    fmf: ""
    in_dot_fmf: ""
    condition: ""
  }
  output {
    File out_stdout = stdout()
  }
}