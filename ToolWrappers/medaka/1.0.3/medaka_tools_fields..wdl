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
    docker: "None"
  }
  parameter_meta {
    medaka: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}