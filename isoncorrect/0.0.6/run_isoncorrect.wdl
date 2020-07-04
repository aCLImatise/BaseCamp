version 1.0

task RunIsoncorrect {
  input {
    String? fast_q_folder
    String? number_cores_allocated
    String? kmer_size_default
    String? window_size_default
    String? xmin
    String? xmax
    String? minimum_fraction_keeping
    String? exact_instance_limit
    Boolean? keep_old
    Boolean? set_w_dynamically
    Int? max_seqs
    Boolean? use_rac_on
    String? split_mod
    String? residual
    Boolean? split_wrt_batches
    String? out_folder
  }
  command <<<
    run_isoncorrect \
      ~{if defined(fast_q_folder) then ("--fastq_folder " +  '"' + fast_q_folder + '"') else ""} \
      ~{if defined(number_cores_allocated) then ("--t " +  '"' + number_cores_allocated + '"') else ""} \
      ~{if defined(kmer_size_default) then ("--k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(window_size_default) then ("--w " +  '"' + window_size_default + '"') else ""} \
      ~{if defined(xmin) then ("--xmin " +  '"' + xmin + '"') else ""} \
      ~{if defined(xmax) then ("--xmax " +  '"' + xmax + '"') else ""} \
      ~{if defined(minimum_fraction_keeping) then ("--T " +  '"' + minimum_fraction_keeping + '"') else ""} \
      ~{if defined(exact_instance_limit) then ("--exact_instance_limit " +  '"' + exact_instance_limit + '"') else ""} \
      ~{true="--keep_old" false="" keep_old} \
      ~{true="--set_w_dynamically" false="" set_w_dynamically} \
      ~{if defined(max_seqs) then ("--max_seqs " +  '"' + max_seqs + '"') else ""} \
      ~{true="--use_racon" false="" use_rac_on} \
      ~{if defined(split_mod) then ("--split_mod " +  '"' + split_mod + '"') else ""} \
      ~{if defined(residual) then ("--residual " +  '"' + residual + '"') else ""} \
      ~{true="--split_wrt_batches" false="" split_wrt_batches} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""}
  >>>
  parameter_meta {
    fast_q_folder: "Path to input fastq folder with reads in clusters (default: False)"
    number_cores_allocated: "Number of cores allocated for clustering (default: 8)"
    kmer_size_default: "Kmer size (default: 9)"
    window_size_default: "Window size (default: 10)"
    xmin: "Lower interval length (default: 14)"
    xmax: "Upper interval length (default: 80)"
    minimum_fraction_keeping: "Minimum fraction keeping substitution (default: 0.1)"
    exact_instance_limit: "Do exact correction for clusters under this threshold (default: 50)"
    keep_old: "Do not recompute previous results if corrected_reads.fq is found and has the smae number of reads as input file (i.e., is complete). (default: False)"
    set_w_dynamically: "Set w = k + max(2*k, floor(cluster_size/1000)). (default: False)"
    max_seqs: "Maximum number of seqs to correct at a time (in case of large clusters). (default: 1000)"
    use_rac_on: "Use racon to polish consensus after spoa (more time consuming but higher accuracy). (default: False)"
    split_mod: "Splits cluster ids in n (default=1) partitions by computing residual of cluster_id divided by n. this parameter needs to be combined with --residual to take effect. (default: 1)"
    residual: "Run isONcorrect on cluster ids with residual (default 0) of cluster_id divided by --split_mod. (default: 0)"
    split_wrt_batches: "Process reads per batch (of max_seqs sequences) instead of per cluster. Significantly decrease runtime when few very large clusters are less than the number of cores used. (default: False)"
    out_folder: "Outfolder with all corrected reads. (default: None)"
  }
}