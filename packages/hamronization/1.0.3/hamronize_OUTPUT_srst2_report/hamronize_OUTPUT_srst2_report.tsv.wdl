version 1.0

task HamronizeOUTPUTSrst2Reporttsv {
  input {
    String ham_ron_ize
    String tool
    String options
  }
  command <<<
    hamronize OUTPUT_srst2_report_tsv \
      ~{ham_ron_ize} \
      ~{tool} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamronization:1.0.3--py_0"
  }
  parameter_meta {
    ham_ron_ize: ""
    tool: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}