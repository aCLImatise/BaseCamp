version 1.0

task IsONcorrect {
  input {
    String? fast_q
    String? kmer_size_default
    String? window_size_default
    String? xmin
    String? xmax
    String? minimum_fraction_keeping
    Boolean? exact
    Boolean? disable_numpy
    Int? max_seqs_to_spo_a
    Int? max_seqs
    Boolean? use_rac_on
    String? exact_instance_limit
    Boolean? set_w_dynamically
    Boolean? verbose
    Boolean? compression
    String? out_folder
  }
  command <<<
    isONcorrect \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(kmer_size_default) then ("--k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(window_size_default) then ("--w " +  '"' + window_size_default + '"') else ""} \
      ~{if defined(xmin) then ("--xmin " +  '"' + xmin + '"') else ""} \
      ~{if defined(xmax) then ("--xmax " +  '"' + xmax + '"') else ""} \
      ~{if defined(minimum_fraction_keeping) then ("--T " +  '"' + minimum_fraction_keeping + '"') else ""} \
      ~{true="--exact" false="" exact} \
      ~{true="--disable_numpy" false="" disable_numpy} \
      ~{if defined(max_seqs_to_spo_a) then ("--max_seqs_to_spoa " +  '"' + max_seqs_to_spo_a + '"') else ""} \
      ~{if defined(max_seqs) then ("--max_seqs " +  '"' + max_seqs + '"') else ""} \
      ~{true="--use_racon" false="" use_rac_on} \
      ~{if defined(exact_instance_limit) then ("--exact_instance_limit " +  '"' + exact_instance_limit + '"') else ""} \
      ~{true="--set_w_dynamically" false="" set_w_dynamically} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--compression" false="" compression} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "Path to input fastq file with reads (default: False)"
    kmer_size_default: "Kmer size (default: 9)"
    window_size_default: "Window size (default: 10)"
    xmin: "Upper interval length (default: 14)"
    xmax: "Lower interval length (default: 80)"
    minimum_fraction_keeping: "Minimum fraction keeping substitution (default: 0.1)"
    exact: "Get exact solution for WIS for evary read (recalculating weights for each read (much slower but slightly more accuracy, not to be used for clusters with over ~500 reads) (default: False)"
    disable_numpy: "Do not require numpy to be installed, but this version is about 1.5x slower than with numpy. (default: False)"
    max_seqs_to_spo_a: "Maximum number of seqs to spoa (default: 200)"
    max_seqs: "Maximum number of seqs to correct at a time (in case of large clusters). (default: 1000)"
    use_rac_on: "Use racon to polish consensus after spoa (more time consuming but higher accuracy). (default: False)"
    exact_instance_limit: "Activates slower exact mode for instance smaller than this limit (default: 0)"
    set_w_dynamically: "Set w = k + max(2*k, floor(cluster_size/1000)). (default: False)"
    verbose: "Print various developer stats. (default: False)"
    compression: "Use homopolymenr compressed reads. (Deprecated, because we will have fewer minmimizer combinations to span regions in homopolymenr dense regions. Solution could be to adjust upper interval legnth dynamically to guarantee a certain number of spanning intervals. (default: False)"
    out_folder: "A fasta file with transcripts that are shared between samples and have perfect illumina support. (default: None)"
  }
}