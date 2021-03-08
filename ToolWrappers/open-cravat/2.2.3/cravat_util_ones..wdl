version 1.0

task CravatutilOnes {
  input {
    String cravat_util
  }
  command <<<
    cravat_util ones_ \
      ~{cravat_util}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    cravat_util: ""
  }
  output {
    File out_stdout = stdout()
  }
}