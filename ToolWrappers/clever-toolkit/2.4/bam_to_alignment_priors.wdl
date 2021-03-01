version 1.0

task Bamtoalignmentpriors {
  input {
    Boolean? skip_reads_exist
    Boolean? ignore_x_a
    Boolean? use_mapq
    Boolean? arg_value_substract
    Boolean? arg_issue_warning
    Boolean? arg_maximal_segment
    Boolean? arg_discard_alignments
    Boolean? arg_filename_given
    Boolean? arg_filename_write
    Boolean? arg_filename_readgroupwise
    Boolean? arg_number_uniquely
    Boolean? arg_write_robustly
    Boolean? arg_number_threads
    Boolean? unsorted
    String? chromosome
  }
  command <<<
    bam_to_alignment_priors \
      ~{if (skip_reads_exist) then "-x" else ""} \
      ~{if (ignore_x_a) then "--ignore_xa" else ""} \
      ~{if (use_mapq) then "--use_mapq" else ""} \
      ~{if (arg_value_substract) then "-p" else ""} \
      ~{if (arg_issue_warning) then "-b" else ""} \
      ~{if (arg_maximal_segment) then "-s" else ""} \
      ~{if (arg_discard_alignments) then "-d" else ""} \
      ~{if (arg_filename_given) then "-i" else ""} \
      ~{if (arg_filename_write) then "-I" else ""} \
      ~{if (arg_filename_readgroupwise) then "-r" else ""} \
      ~{if (arg_number_uniquely) then "-n" else ""} \
      ~{if (arg_write_robustly) then "-m" else ""} \
      ~{if (arg_number_threads) then "-T" else ""} \
      ~{if (unsorted) then "--unsorted" else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_reads_exist: "[ --dont_skip_non_xa ]             Do not skip reads for which other\\nalignments exist (i.e. X0+X1>1, but no\\nXA tag is present)."
    ignore_x_a: "Do not use alternative alignments from\\nXA tags."
    use_mapq: "Use MAPQ instead of recomputing\\nprobability from all alignments."
    arg_value_substract: "[ --phred_base ] arg (=33)         Value to substract from ASCII code to\\nget the PHRED quality."
    arg_issue_warning: "[ --bad_alignment_threshold ] arg (=1000)\\nIssue a warning when AS tag is above\\nthis value."
    arg_maximal_segment: "[ --max_span ] arg (=50000)        Maximal internal segment. Read pairs\\nwith larger internal segment will be\\nignored."
    arg_discard_alignments: "[ --discard_reads ] arg (=0)       Discard \\\"concordant\\\" alignments within\\nthe given number of standard deviations\\n(default: disabled)."
    arg_filename_given: "[ --insert_size_dist ] arg         Filename of known internal segment size\\ndistribution. If not given, this\\ndistribution is estimated."
    arg_filename_write: "[ --insert_size_dist_out ] arg     Filename of write estimated internal\\nsegment size distribution to."
    arg_filename_readgroupwise: "[ --rg_insert_size_dist ] arg      Filename of read-group-wise known\\ninternal segment size distributions.\\nExpects two-column text file:\\n<readgroup> <distribution-filename>."
    arg_number_uniquely: "[ --dist_est_count ] arg (=5000000)\\nNumber of uniquely mapping reads that\\nare to be used to estimate internal\\nsegment size distribution."
    arg_write_robustly: "[ --mean_and_sd ] arg              Write (robustly estimated) mean and\\nstandard deviation of main peak if\\ninternal segment size distribution to\\ngiven filename."
    arg_number_threads: "[ --threads ] arg (=0)             Number of threads (default: 0 =\\nstrictly single-threaded)."
    unsorted: "Don't assume reads to be sorted by\\nposition. In this case, alignments must\\nbe grouped by read, i.e. alignments of\\nthe same read (pair) must be in\\nsubsequent lines."
    chromosome: "Chromosome to process (default: all)."
  }
  output {
    File out_stdout = stdout()
  }
}