version 1.0

task ArrowCannedkeysAddKey {
  input {
    String key
  }
  command <<<
    arrow cannedkeys addKey \
      ~{key}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}