version 1.0

task Fastqmcf {
  input {
    File? output_file_stats
    String? only_output_n
    Int? log_scale_adapter
    Float? occurance_threshold_adapter
    Int? minimum_clip_length
    Int? maximum_adapter_difference
    Int? minimum_remaining_sequence
    Int? maximum_remaining_sequence
    Int? remove_duplicate_reads
    Int? skew_percentagelessthan_causing
    Int? bad_read_percentage
    Int? quality_threshold_causing
    Int? windowsize_quality_trimming
    Boolean? remove_homopolymer_reads
    Boolean? remove_low_complexity
    Boolean? set_default_parameters
    Boolean? force_disableenable_illumina
    String? phredscale_auto
    Boolean? dons_frontsends_reads
    Boolean? clip_just_output
    Boolean? only_keep_clipped_reads
    Boolean? save_discarded_reads
    Int? number_reads_use
    Boolean? output_lots_random
    Boolean? cycle_adjust
    Boolean? phred_adjust
    Boolean? phred_adjust_max
    Boolean? homopolymer_pct
    Boolean? low_complex_pct
    Boolean? keep_clipped
    Boolean? max_output_reads
    String adapters_dot_fa
    String reads_dot_fq
    Int? mates_one_dot_fq
  }
  command <<<
    fastq_mcf \
      ~{adapters_dot_fa} \
      ~{reads_dot_fq} \
      ~{mates_one_dot_fq} \
      ~{if defined(output_file_stats) then ("-o " +  '"' + output_file_stats + '"') else ""} \
      ~{if defined(only_output_n) then ("-O " +  '"' + only_output_n + '"') else ""} \
      ~{if defined(log_scale_adapter) then ("-s " +  '"' + log_scale_adapter + '"') else ""} \
      ~{if defined(occurance_threshold_adapter) then ("-t " +  '"' + occurance_threshold_adapter + '"') else ""} \
      ~{if defined(minimum_clip_length) then ("-m " +  '"' + minimum_clip_length + '"') else ""} \
      ~{if defined(maximum_adapter_difference) then ("-p " +  '"' + maximum_adapter_difference + '"') else ""} \
      ~{if defined(minimum_remaining_sequence) then ("-l " +  '"' + minimum_remaining_sequence + '"') else ""} \
      ~{if defined(maximum_remaining_sequence) then ("-L " +  '"' + maximum_remaining_sequence + '"') else ""} \
      ~{if defined(remove_duplicate_reads) then ("-D " +  '"' + remove_duplicate_reads + '"') else ""} \
      ~{if defined(skew_percentagelessthan_causing) then ("-k " +  '"' + skew_percentagelessthan_causing + '"') else ""} \
      ~{if defined(bad_read_percentage) then ("-x " +  '"' + bad_read_percentage + '"') else ""} \
      ~{if defined(quality_threshold_causing) then ("-q " +  '"' + quality_threshold_causing + '"') else ""} \
      ~{if defined(windowsize_quality_trimming) then ("-w " +  '"' + windowsize_quality_trimming + '"') else ""} \
      ~{if (remove_homopolymer_reads) then "-H" else ""} \
      ~{if (remove_low_complexity) then "-X" else ""} \
      ~{if (set_default_parameters) then "-0" else ""} \
      ~{if (force_disableenable_illumina) then "-U" else ""} \
      ~{if defined(phredscale_auto) then ("-P " +  '"' + phredscale_auto + '"') else ""} \
      ~{if (dons_frontsends_reads) then "-R" else ""} \
      ~{if (clip_just_output) then "-n" else ""} \
      ~{if (only_keep_clipped_reads) then "-K" else ""} \
      ~{if (save_discarded_reads) then "-S" else ""} \
      ~{if defined(number_reads_use) then ("-C " +  '"' + number_reads_use + '"') else ""} \
      ~{if (output_lots_random) then "-d" else ""} \
      ~{if (cycle_adjust) then "--cycle-adjust" else ""} \
      ~{if (phred_adjust) then "--phred-adjust" else ""} \
      ~{if (phred_adjust_max) then "--phred-adjust-max" else ""} \
      ~{if (homopolymer_pct) then "--homopolymer-pct" else ""} \
      ~{if (low_complex_pct) then "--lowcomplex-pct" else ""} \
      ~{if (keep_clipped) then "--keep-clipped" else ""} \
      ~{if (max_output_reads) then "--max-output-reads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_stats: "Output file (stats to stdout)"
    only_output_n: "Only output the first N records (all)"
    log_scale_adapter: "Log scale for adapter minimum-length-match (2.2)"
    occurance_threshold_adapter: "% occurance threshold before adapter clipping (0.25)"
    minimum_clip_length: "Minimum clip length, overrides scaled auto (1)"
    maximum_adapter_difference: "Maximum adapter difference percentage (10)"
    minimum_remaining_sequence: "Minimum remaining sequence length (19)"
    maximum_remaining_sequence: "Maximum remaining sequence length (none)"
    remove_duplicate_reads: "Remove duplicate reads : Read_1 has an identical N bases (0)"
    skew_percentagelessthan_causing: "sKew percentage-less-than causing cycle removal (2)"
    bad_read_percentage: "'N' (Bad read) percentage causing cycle removal (20)"
    quality_threshold_causing: "quality threshold causing base removal (10)"
    windowsize_quality_trimming: "window-size for quality trimming (1)"
    remove_homopolymer_reads: "remove >95% homopolymer reads (no)"
    remove_low_complexity: "remove low complexity reads (no)"
    set_default_parameters: "Set all default parameters to zero/do nothing"
    force_disableenable_illumina: "|u     Force disable/enable Illumina PF filtering (auto)"
    phredscale_auto: "Phred-scale (auto)"
    dons_frontsends_reads: "Don't remove N's from the fronts/ends of reads"
    clip_just_output: "Don't clip, just output what would be done"
    only_keep_clipped_reads: "Only keep clipped reads"
    save_discarded_reads: "Save all discarded reads to '.skip' files"
    number_reads_use: "Number of reads to use for subsampling (300k)"
    output_lots_random: "Output lots of random debugging stuff"
    cycle_adjust: "CYC,AMT   Adjust cycle CYC (negative = offset from end) by amount AMT"
    phred_adjust: "SCORE,AMT Adjust score SCORE by amount AMT"
    phred_adjust_max: "SCORE     Adjust scores > SCORE to SCOTE"
    homopolymer_pct: "PCT       Homopolymer filter percent (95)"
    low_complex_pct: "PCT       Complexity filter percent (95)"
    keep_clipped: "Only keep clipped (same as -K)"
    max_output_reads: "N        Only output first N records (same as -O)"
    adapters_dot_fa: ""
    reads_dot_fq: ""
    mates_one_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stats = "${in_output_file_stats}"
  }
}