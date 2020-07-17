version 1.0

task PlasFlow.py {
  input {
    String? input_fasta_file
    String? output_file_classification
    String? threshold
    String? labels
    String? models
  }
  command <<<
    PlasFlow.py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_file_classification) then ("--output " +  '"' + output_file_classification + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input fasta file with sequences to classify (required)"
    output_file_classification: "Output file with classification results (required)"
    threshold: "Threshold for probability filtering (default=0.7)"
    labels: "Custom labels file"
    models: "Custom models localization"
  }
}