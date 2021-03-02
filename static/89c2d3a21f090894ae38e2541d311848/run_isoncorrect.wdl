version 1.0

task RunIsoncorrect {
  input {
    Directory? fast_q_folder
    Int? number_cores_allocated
    Int? kmer_size_default
    Int? window_size_default
    Int? xmin
    Int? xmax
    Float? minimum_fraction_keeping
    Int? exact_instance_limit
    Boolean? keep_old
    Boolean? set_w_dynamically
    Int? max_seqs
    Boolean? use_rac_on
    Int? split_mod
    Int? residual
    Boolean? split_wrt_batches
    Directory? out_folder
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
      ~{if (keep_old) then "--keep_old" else ""} \
      ~{if (set_w_dynamically) then "--set_w_dynamically" else ""} \
      ~{if defined(max_seqs) then ("--max_seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if (use_rac_on) then "--use_racon" else ""} \
      ~{if defined(split_mod) then ("--split_mod " +  '"' + split_mod + '"') else ""} \
      ~{if defined(residual) then ("--residual " +  '"' + residual + '"') else ""} \
      ~{if (split_wrt_batches) then "--split_wrt_batches" else ""} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isoncorrect:0.0.7--py_0"
  }
  parameter_meta {
    fast_q_folder: "Path to input fastq folder with reads in clusters\\n(default: False)"
    number_cores_allocated: "Number of cores allocated for clustering (default: 8)"
    kmer_size_default: "Kmer size (default: 9)"
    window_size_default: "Window size (default: 10)"
    xmin: "Lower interval length (default: 14)"
    xmax: "Upper interval length (default: 80)"
    minimum_fraction_keeping: "Minimum fraction keeping substitution (default: 0.1)"
    exact_instance_limit: "Do exact correction for clusters under this threshold\\n(default: 50)"
    keep_old: "Do not recompute previous results if\\ncorrected_reads.fq is found and has the smae number of\\nreads as input file (i.e., is complete). (default:\\nFalse)"
    set_w_dynamically: "Set w = k + max(2*k, floor(cluster_size/1000)).\\n(default: False)"
    max_seqs: "Maximum number of seqs to correct at a time (in case\\nof large clusters). (default: 1000)"
    use_rac_on: "Use racon to polish consensus after spoa (more time\\nconsuming but higher accuracy). (default: False)"
    split_mod: "Splits cluster ids in n (default=1) partitions by\\ncomputing residual of cluster_id divided by n. this\\nparameter needs to be combined with --residual to take\\neffect. (default: 1)"
    residual: "Run isONcorrect on cluster ids with residual (default\\n0) of cluster_id divided by --split_mod. (default: 0)"
    split_wrt_batches: "Process reads per batch (of max_seqs sequences)\\ninstead of per cluster. Significantly decrease runtime\\nwhen few very large clusters are less than the number\\nof cores used. (default: False)"
    out_folder: "Outfolder with all corrected reads. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}