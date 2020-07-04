version 1.0

task IuFilterQualityMinoche {
  input {
    Float? minimum_highquality_read
    Boolean? ignore_def_lines
    Boolean? visualize_quality_curves
    Int? limit_num_pairs
    Boolean? print_qual_scores
    Boolean? store_read_fate
    String config_file
  }
  command <<<
    iu-filter-quality-minoche \
      ~{config_file} \
      ~{if defined(minimum_highquality_read) then ("-p " +  '"' + minimum_highquality_read + '"') else ""} \
      ~{true="--ignore-deflines" false="" ignore_def_lines} \
      ~{true="--visualize-quality-curves" false="" visualize_quality_curves} \
      ~{if defined(limit_num_pairs) then ("--limit-num-pairs " +  '"' + limit_num_pairs + '"') else ""} \
      ~{true="--print-qual-scores" false="" print_qual_scores} \
      ~{true="--store-read-fate" false="" store_read_fate}
  >>>
  parameter_meta {
    minimum_highquality_read: "Minimum high-quality read length (default: 0.75)"
    ignore_def_lines: "If FASTQ files are not CASAVA outputs, parsing the header info may go wrong. This flag tells the software to skip parsing deflines."
    visualize_quality_curves: "When set, mean quality score for individual bases will be stored and visualized for each group of reads."
    limit_num_pairs: "Put a limit to the number of pairs to analyze. For testing purposes."
    print_qual_scores: "When set, the script will print out the Q-scores the way it sees it in the FASTQ file. This flag will generate a lot of useless output to the stdout, and you should not use it if you are not testing something."
    store_read_fate: "As it goes through your raw reads, this program keeps track of the read fate so you can learn what happened to a given read ID in your raw input data once the analysis is done. This output can become extremely large, and often is utterly useless to you unless you have a very specific benchmarking or debugging interestes, hence, it is not stored by default. You can change that behavior by using this flag, and ask illumina-utils to store this data on your disk."
    config_file: "User configuration to run. See the source code to see an example."
  }
}