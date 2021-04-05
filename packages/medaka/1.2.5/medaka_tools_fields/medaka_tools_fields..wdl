version 1.0

task MedakaToolsFields {
  input {
    String medaka
    String tools
  }
  command <<<
    medaka tools fields_ \
      ~{medaka} \
      ~{tools}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0"
  }
  parameter_meta {
    medaka: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}