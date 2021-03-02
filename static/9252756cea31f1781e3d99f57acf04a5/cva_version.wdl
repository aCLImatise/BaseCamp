version 1.0

task CvaVersion {
  input {
    String cva
  }
  command <<<
    cva version \
      ~{cva}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    cva: ""
  }
  output {
    File out_stdout = stdout()
  }
}