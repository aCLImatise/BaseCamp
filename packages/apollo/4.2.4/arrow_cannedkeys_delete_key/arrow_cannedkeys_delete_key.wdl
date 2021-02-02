version 1.0

task ArrowCannedkeysDeleteKey {
  input {
    String id_number
  }
  command <<<
    arrow cannedkeys delete_key \
      ~{id_number}
  >>>
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}