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
  parameter_meta {
    medaka: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}