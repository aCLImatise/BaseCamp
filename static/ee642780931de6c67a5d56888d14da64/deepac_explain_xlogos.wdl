version 1.0

task DeepacExplainXlogos {
  input {
    Directory? fast_a_dir
    Directory? scores_dir
    Directory? logo_dir
    Int? gain
    String? train_data
    Directory? out_dir
  }
  command <<<
    deepac explain xlogos \
      ~{if defined(fast_a_dir) then ("--fasta-dir " +  '"' + fast_a_dir + '"') else ""} \
      ~{if defined(scores_dir) then ("--scores-dir " +  '"' + scores_dir + '"') else ""} \
      ~{if defined(logo_dir) then ("--logo-dir " +  '"' + logo_dir + '"') else ""} \
      ~{if defined(gain) then ("--gain " +  '"' + gain + '"') else ""} \
      ~{if defined(train_data) then ("--train-data " +  '"' + train_data + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_dir: "Directory containing motifs per filter (.fasta)"
    scores_dir: "Directory containing nucleotide scores per filter\\n(.csv)"
    logo_dir: "Directory containing motifs in weighted transfac\\nformat (only required if weighted weblogos should be\\ncreated)"
    gain: "Color saturation gain. Weblogo colors reach saturation\\nwhen the average nt score=1/gain. Default: 128000.\\nRecommended: input length * number of filters."
    train_data: "Training data set to compute GC-content"
    out_dir: "Output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}