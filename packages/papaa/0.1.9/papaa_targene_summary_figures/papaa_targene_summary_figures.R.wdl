version 1.0

task PapaaTargeneSummaryFiguresR {
  input {
    Directory? classifier_summary
    String? seed
  }
  command <<<
    papaa_targene_summary_figures_R \
      ~{if defined(classifier_summary) then ("--classifier_summary " +  '"' + classifier_summary + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_summary: "Classifier base folder"
    seed: "set seed option"
  }
  output {
    File out_stdout = stdout()
  }
}