version 1.0

task DeepacstrainExplainFa2transfac {
  input {
    Directory? in_dir
    Directory? out_dir
    Boolean? weighting
    Directory? weight_dir
    String deep_ac
    String explain
    Int fa_two_transfac
  }
  command <<<
    deepac_strain explain fa2transfac \
      ~{deep_ac} \
      ~{explain} \
      ~{fa_two_transfac} \
      ~{if defined(in_dir) then ("--in-dir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if (weighting) then "--weighting" else ""} \
      ~{if defined(weight_dir) then ("--weight-dir " +  '"' + weight_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    in_dir: "Directory containing motifs per filter (.fasta)"
    out_dir: "Output directory"
    weighting: "Weight sequences by their DeepLIFT score"
    weight_dir: "Directory containing the DeepLIFT scores per filter\\n(only required if --weighting is chosen)\\n"
    deep_ac: ""
    explain: ""
    fa_two_transfac: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}