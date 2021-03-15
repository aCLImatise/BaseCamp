version 1.0

task HamronizeOUTPUTres {
  input {
    String ham_ron_ize
    String tool
    String options
  }
  command <<<
    hamronize OUTPUT_res \
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