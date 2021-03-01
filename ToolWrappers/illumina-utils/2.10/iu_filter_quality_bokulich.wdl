version 1.0

task Iufilterqualitybokulich {
  input {
    Float? minimal_highquality_read
    Int? minimum_phred_score
    Int? maximum_consecutive_lowquality
    Int? maximum_ambiguous_calls
    Boolean? ignore_def_lines
    Boolean? visualize_quality_curves
    Int? limit_num_pairs
    File? print_qual_scores
    Boolean? store_read_fate
  }
  command <<<
    iu_filter_quality_bokulich \
      ~{if defined(minimal_highquality_read) then ("-p " +  '"' + minimal_highquality_read + '"') else ""} \
      ~{if defined(minimum_phred_score) then ("-q " +  '"' + minimum_phred_score + '"') else ""} \
      ~{if defined(maximum_consecutive_lowquality) then ("-r " +  '"' + maximum_consecutive_lowquality + '"') else ""} \
      ~{if defined(maximum_ambiguous_calls) then ("-n " +  '"' + maximum_ambiguous_calls + '"') else ""} \
      ~{if (ignore_def_lines) then "--ignore-deflines" else ""} \
      ~{if (visualize_quality_curves) then "--visualize-quality-curves" else ""} \
      ~{if defined(limit_num_pairs) then ("--limit-num-pairs " +  '"' + limit_num_pairs + '"') else ""} \
      ~{if (print_qual_scores) then "--print-qual-scores" else ""} \
      ~{if (store_read_fate) then "--store-read-fate" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  parameter_meta {
    minimal_highquality_read: "Minimal high-quality read length (default: 0.75)"
    minimum_phred_score: "Minimum PHRED score to identify low quality bases\\n(default: 3)"
    maximum_consecutive_lowquality: "Maximum of consecutive low-quality calls (default: 3)"
    maximum_ambiguous_calls: "Maximum of ambiguous calls allowed (default: 0)"
    ignore_def_lines: "If FASTQ files are not CASAVA outputs, parsing the\\nheader info may go wrong. This flag tells the software\\nto skip parsing deflines."
    visualize_quality_curves: "When set, mean quality score for individual bases will\\nbe stored and visualized for each group of reads."
    limit_num_pairs: "Put a limit to the number of pairs to analyze. For\\ntesting purposes."
    print_qual_scores: "When set, the script will print out the Q-scores the\\nway it sees it in the FASTQ file. This flag will\\ngenerate a lot of useless output to the stdout, and\\nyou should not use it if you are not testing\\nsomething."
    store_read_fate: "As it goes through your raw reads, this program keeps\\ntrack of the read fate so you can learn what happened\\nto a given read ID in your raw input data once the\\nanalysis is done. This output can become extremely\\nlarge, and often is utterly useless to you unless you\\nhave a very specific benchmarking or debugging\\ninterestes, hence, it is not stored by default. You\\ncan change that behavior by using this flag, and ask\\nillumina-utils to store this data on your disk.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_print_qual_scores = "${in_print_qual_scores}"
  }
}