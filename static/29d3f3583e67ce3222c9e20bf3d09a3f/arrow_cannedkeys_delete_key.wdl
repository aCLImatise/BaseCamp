version 1.0

task ArrowCannedkeysDeleteKey {
  input {
    String id_number
  }
  command <<<
    arrow cannedkeys delete_key \
      ~{id_number}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}