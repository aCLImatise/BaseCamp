version 1.0

task ArrowCannedkeysShowKey {
  input {
    String value
  }
  command <<<
    arrow cannedkeys show_key \
      ~{value}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}