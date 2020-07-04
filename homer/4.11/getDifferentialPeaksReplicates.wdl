version 1.0

task GetDifferentialPeaksReplicates.pl {
  input {
    String? b
    String? i
    Boolean? fold_enrichment_bg
    Boolean? fdr_bg_default
    Boolean? fdr
    String? genome
    Boolean? de_seq_two
    Boolean? balanced
    Boolean? frag_length
    Boolean? all
    String? t
    String? ip
    String? tag_dir_two
  }
  command <<<
    getDifferentialPeaksReplicates.pl \
      ~{ip} \
      ~{tag_dir_two} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{true="-f" false="" fold_enrichment_bg} \
      ~{true="-q" false="" fdr_bg_default} \
      ~{true="-fdr" false="" fdr} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{true="-DESeq2" false="" de_seq_two} \
      ~{true="-balanced" false="" balanced} \
      ~{true="-fragLength" false="" frag_length} \
      ~{true="-all" false="" all} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    b: "[background tagdir2] ..."
    i: "[Input tagdir2] ..."
    fold_enrichment_bg: "<#> (fold enrichment over bg, default: 2)"
    fdr_bg_default: "<#> (FDR over bg, default: 0.05)"
    fdr: "<#>, -F <#>, -L <#> (parameters for findPeaks)"
    genome: "(genome version to use for annotation)"
    de_seq_two: "| -DESeq | -edgeR (differential stats algorithm, default: DESeq2)"
    balanced: "(normalize signal across peaks, default: normalize to read totals)"
    frag_length: "<#> (standardize estimated fragment length across analysis)"
    all: "(report all peaks, not just differentially regulated)"
    t: ""
    ip: ""
    tag_dir_two: ""
  }
}