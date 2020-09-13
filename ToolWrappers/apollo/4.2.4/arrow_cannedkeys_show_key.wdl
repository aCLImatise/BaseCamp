version 1.0

task ArrowCannedkeysShowKey {
  input {
    String value
  }
  command <<<
    arrow cannedkeys show_key \
      ~{value}
  >>>
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}