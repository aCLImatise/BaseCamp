version 1.0

task ChakinOrganismDeleteAllOrganisms {
  input {
    Boolean? confirm
    String options
  }
  command <<<
    chakin organism delete_all_organisms \
      ~{options} \
      ~{if (confirm) then "--confirm" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    confirm: "Confirm that you really do want to delete ALL of the organisms."
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}