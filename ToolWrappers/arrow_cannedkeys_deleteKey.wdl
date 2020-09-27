version 1.0

task ArrowCannedkeysDeleteKey {
  input {
    String id_number
  }
  command <<<
    arrow cannedkeys deleteKey \
      ~{id_number}
  >>>
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}