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
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}