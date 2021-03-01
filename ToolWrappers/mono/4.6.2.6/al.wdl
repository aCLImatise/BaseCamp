version 1.0

task Al {
  input {
    String? sources
  }
  command <<<
    al \
      ~{sources}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sources: ""
  }
  output {
    File out_stdout = stdout()
  }
}