version 1.0

task Generax {
  input {
    String? rec_model
  }
  command <<<
    generax \
      ~{if defined(rec_model) then ("--rec-model " +  '"' + rec_model + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/generax:2.0.1--h78e549b_0"
  }
  parameter_meta {
    rec_model: "{UndatedDL, UndatedDTL, Auto}"
  }
  output {
    File out_stdout = stdout()
  }
}