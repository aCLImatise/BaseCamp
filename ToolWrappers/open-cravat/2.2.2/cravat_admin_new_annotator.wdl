version 1.0

task CravatadminNewannotator {
  input {
    String annotator_name
  }
  command <<<
    cravat_admin new_annotator \
      ~{annotator_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    annotator_name: "Annotator name"
  }
  output {
    File out_stdout = stdout()
  }
}