version 1.0

task PlasFlowpy {
  input {
    File? input_fasta_file
    File? output_file_required
    Float? threshold
    File? labels
    String? models
  }
  command <<<
    PlasFlow_py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_file_required) then ("--output " +  '"' + output_file_required + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "Input fasta file with sequences to classify (required)"
    output_file_required: "Output file with classification results (required)"
    threshold: "Threshold for probability filtering (default=0.7)"
    labels: "Custom labels file"
    models: "Custom models localization"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_required = "${in_output_file_required}"
  }
}