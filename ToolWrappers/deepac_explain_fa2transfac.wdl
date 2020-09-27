version 1.0

task DeepacExplainFa2transfac {
  input {
    Directory? in_dir
    Directory? out_dir
    Boolean? weighting
    Directory? weight_dir
  }
  command <<<
    deepac explain fa2transfac \
      ~{if defined(in_dir) then ("--in-dir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if (weighting) then "--weighting" else ""} \
      ~{if defined(weight_dir) then ("--weight-dir " +  '"' + weight_dir + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "Directory containing motifs per filter (.fasta)"
    out_dir: "Output directory"
    weighting: "Weight sequences by their DeepLIFT score"
    weight_dir: "Directory containing the DeepLIFT scores per filter\\n(only required if --weighting is chosen)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}