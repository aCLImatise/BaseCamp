version 1.0

task DeepacstrainExplainFranking {
  input {
    String? mode
    Directory? scores_dir
    File? true_label
    File? pred_label
    Directory? out_dir
    String deep_ac
    String explain
    String franking
  }
  command <<<
    deepac_strain explain franking \
      ~{deep_ac} \
      ~{explain} \
      ~{franking} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(scores_dir) then ("--scores_dir " +  '"' + scores_dir + '"') else ""} \
      ~{if defined(true_label) then ("--true_label " +  '"' + true_label + '"') else ""} \
      ~{if defined(pred_label) then ("--pred_label " +  '"' + pred_label + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    mode: "Use original filter scores or normalize scores\\nrelative to true or predicted classes."
    scores_dir: "Directory containing filter contribution scores (.csv)"
    true_label: "File with true read labels (.npy)"
    pred_label: "File with predicted read labels (.npy)"
    out_dir: "Output directory\\n"
    deep_ac: ""
    explain: ""
    franking: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}