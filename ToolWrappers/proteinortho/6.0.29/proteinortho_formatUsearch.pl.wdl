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
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  parameter_meta {
    format_udot_pl: ""
    file_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}