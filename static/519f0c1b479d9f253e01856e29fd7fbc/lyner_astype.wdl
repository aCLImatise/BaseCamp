version 1.0

task LynerAstype {
  input {
    String type
  }
  command <<<
    lyner astype \
      ~{type}
  >>>
  parameter_meta {
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}