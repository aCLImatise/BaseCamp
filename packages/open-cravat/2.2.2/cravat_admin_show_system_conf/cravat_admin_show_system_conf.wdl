version 1.0

task CravatadminShowsystemconf {
  input {
    String cravat_admin
  }
  command <<<
    cravat_admin show_system_conf \
      ~{cravat_admin}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    cravat_admin: ""
  }
  output {
    File out_stdout = stdout()
  }
}