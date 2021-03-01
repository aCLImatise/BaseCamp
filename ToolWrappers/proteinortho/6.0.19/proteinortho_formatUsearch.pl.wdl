version 1.0

task ProteinorthoFormatUsearchpl {
  input {
    String format_udot_pl
    String file_a
  }
  command <<<
    proteinortho_formatUsearch_pl \
      ~{format_udot_pl} \
      ~{file_a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_udot_pl: ""
    file_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}