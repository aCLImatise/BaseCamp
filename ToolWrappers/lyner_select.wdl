version 1.0

task LynerSelect {
  input {
    String what
  }
  command <<<
    lyner select \
      ~{what}
  >>>
  parameter_meta {
    what: ""
  }
  output {
    File out_stdout = stdout()
  }
}