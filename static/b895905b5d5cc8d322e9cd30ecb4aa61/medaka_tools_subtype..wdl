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
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  parameter_meta {
    medaka: ""
    tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}