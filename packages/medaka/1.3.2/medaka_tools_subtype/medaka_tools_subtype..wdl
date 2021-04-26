version 1.0

task MedakaToolsSubtype {
  input {
    String medaka
    String tools
  }
  command <<<
    medaka tools subtype_ \
      ~{medaka} \
      ~{tools}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  parameter_meta {
    medaka: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}