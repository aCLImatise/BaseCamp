version 1.0

task ScpredGetStdOutputR {
  input {
    File? predictions_object
    Boolean? get_scores
    File? classifier
    File? output_table
  }
  command <<<
    scpred_get_std_output_R \
      ~{if defined(predictions_object) then ("--predictions-object " +  '"' + predictions_object + '"') else ""} \
      ~{if (get_scores) then "--get-scores" else ""} \
      ~{if defined(classifier) then ("--classifier " +  '"' + classifier + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  parameter_meta {
    predictions_object: "Path to the Seurat predictions object in .rds format"
    get_scores: "Should score column be added? Default: TRUE"
    classifier: "Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)"
    output_table: "Path to the final output file in text format"
  }
  output {
    File out_stdout = stdout()
    File out_classifier = "${in_classifier}"
    File out_output_table = "${in_output_table}"
  }
}