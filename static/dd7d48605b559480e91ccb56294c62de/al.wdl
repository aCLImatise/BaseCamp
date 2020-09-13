version 1.0

task Al {
  input {
    String? sources
  }
  command <<<
    al \
      ~{sources}
  >>>
  parameter_meta {
    sources: ""
  }
  output {
    File out_stdout = stdout()
  }
}