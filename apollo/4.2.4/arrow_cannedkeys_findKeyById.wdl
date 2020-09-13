version 1.0

task ArrowCannedkeysFindKeyById {
  input {
    String id_number
  }
  command <<<
    arrow cannedkeys findKeyById \
      ~{id_number}
  >>>
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}