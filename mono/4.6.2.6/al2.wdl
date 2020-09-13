version 1.0

task Al2 {
  input {
    String al
    String? sources
  }
  command <<<
    al2 \
      ~{al} \
      ~{sources}
  >>>
  parameter_meta {
    al: ""
    sources: ""
  }
  output {
    File out_stdout = stdout()
  }
}