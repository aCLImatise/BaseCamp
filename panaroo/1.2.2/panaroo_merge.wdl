version 1.0

task PanarooMerge {
  input {
    Int? min_edge_support_sv
    String? threads
    Boolean? quiet
    Array[String] directories
    String? out_dir
    String? threshold
    String? family_threshold
    String? len_dif_percent
    Boolean? merge_paralogs
    Int? length_outlier_support_proportion
    String? alignment
    String? aligner
    String? core_threshold
    String pana_roo_merge_graphs
  }
  command <<<
    panaroo-merge \
      ~{pana_roo_merge_graphs} \
      ~{if defined(min_edge_support_sv) then ("--min_edge_support_sv " +  '"' + min_edge_support_sv + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(directories) then ("--directories " +  '"' + directories + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(family_threshold) then ("--family_threshold " +  '"' + family_threshold + '"') else ""} \
      ~{if defined(len_dif_percent) then ("--len_dif_percent " +  '"' + len_dif_percent + '"') else ""} \
      ~{true="--merge_paralogs" false="" merge_paralogs} \
      ~{if defined(length_outlier_support_proportion) then ("--length_outlier_support_proportion " +  '"' + length_outlier_support_proportion + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(core_threshold) then ("--core_threshold " +  '"' + core_threshold + '"') else ""}
  >>>
  parameter_meta {
    min_edge_support_sv: "minimum edge support required to call structural variants in the presence/absence sv file (default=max(2, 0.01*n_samples))"
    threads: "number of threads to use (default=1)"
    quiet: "suppress additional output"
    directories: "Location of seperate Panaroo output directories"
    out_dir: "location of a new output directory"
    threshold: "sequence identity threshold (default=0.95)"
    family_threshold: "protein family sequence identity threshold (default=0.7)"
    len_dif_percent: "length difference cutoff (default=0.95)"
    merge_paralogs: "don't split paralogs"
    length_outlier_support_proportion: "proportion of genomes supporting a gene with a length more than 1.5x outside the interquatile range for genes in the same cluster (default=0.01). Genes failing this test will be re-annotated at the shorter length"
    alignment: "Output alignments of core genes or all genes. Options are 'core' and 'pan'. Default: 'None'"
    aligner: "Specify an aligner. Options:'prank', 'clustal', and default: 'mafft'"
    core_threshold: "Core-genome sample threshold (default=0.95)"
    pana_roo_merge_graphs: ""
  }
}