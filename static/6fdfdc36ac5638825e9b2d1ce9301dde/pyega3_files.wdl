version 1.0

task Pyega3Files {
  input {
    String identifier
  }
  command <<<
    pyega3 files \
      ~{identifier}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    identifier: "Dataset ID (e.g. EGAD00000000001)"
  }
  output {
    File out_stdout = stdout()
  }
}