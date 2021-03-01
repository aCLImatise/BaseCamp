version 1.0

task DeepacstrainExplainFranking {
  input {
    String? mode
    Directory? scores_dir
    File? true_label
    File? pred_label
    Directory? output_directory
    String optional_arguments
  }
  command <<<
    deepac_strain explain franking \
      ~{optional_arguments} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(scores_dir) then ("--scores_dir " +  '"' + scores_dir + '"') else ""} \
      ~{if defined(true_label) then ("--true_label " +  '"' + true_label + '"') else ""} \
      ~{if defined(pred_label) then ("--pred_label " +  '"' + pred_label + '"') else ""} \
      ~{if defined(output_directory) then ("--out_dir " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Use original filter scores or normalize scores\\nrelative to true or predicted classes."
    scores_dir: "Directory containing filter contribution scores (.csv)"
    true_label: "File with true read labels (.npy)"
    pred_label: "File with predicted read labels (.npy)"
    output_directory: "Output directory\\n"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}