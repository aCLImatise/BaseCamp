version 1.0

task CvaShowsystemconf {
  input {
    String cva
  }
  command <<<
    cva show_system_conf \
      ~{cva}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    cva: ""
  }
  output {
    File out_stdout = stdout()
  }
}