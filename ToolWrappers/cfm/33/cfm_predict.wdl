version 1.0

task Cfmpredict {
  input {
    String input_smiles_or_inch_i
    String prob_thresh_for_prune
    String param_filename
    String config_filename
    String include_annotations
    String output_filename
    String apply_post_processing
  }
  command <<<
    cfm_predict \
      ~{input_smiles_or_inch_i} \
      ~{prob_thresh_for_prune} \
      ~{param_filename} \
      ~{config_filename} \
      ~{include_annotations} \
      ~{output_filename} \
      ~{apply_post_processing}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_smiles_or_inch_i: ""
    prob_thresh_for_prune: ""
    param_filename: ""
    config_filename: ""
    include_annotations: ""
    output_filename: ""
    apply_post_processing: ""
  }
  output {
    File out_stdout = stdout()
  }
}