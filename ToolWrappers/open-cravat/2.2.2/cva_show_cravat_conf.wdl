version 1.0

task CvaShowcravatconf {
  input {
    String cva
  }
  command <<<
    cva show_cravat_conf \
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