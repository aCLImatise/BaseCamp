version 1.0

task PapaaVisualizeDecisionspy {
  input {
    File? classifier_decisions
    String? custom
  }
  command <<<
    papaa_visualize_decisions_py \
      ~{if defined(classifier_decisions) then ("--classifier_decisions " +  '"' + classifier_decisions + '"') else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_decisions: "folder location of classifier decision file"
    custom: "comma separated list of columns to plot\\n"
  }
  output {
    File out_stdout = stdout()
  }
}