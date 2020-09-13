version 1.0

task BiscuitPileup {
  input {
    Boolean? region_optional_specified
    Boolean? number_of_threads
    Boolean? nomeseq_mode
    Boolean? somatic_mode_must
    Boolean? somatic_mode_tumor
    Boolean? somatic_mode_normal
    File? pileup_output_file
    Boolean? pileup_statistics_output
    Boolean? verbose_print_info
    Boolean? min_base_quality
    Boolean? minimum_mapping_quality
    Boolean? minimum_alignment_score
    Boolean? max_cytosine_retention
    Boolean? minimum_read_length
    Boolean? minimum_distance_end
    Boolean? redistribution_ambiguous_yr
    Boolean? filtering_secondary_mapping
    Boolean? double_counting_cytosine
    Boolean? no_filtering_duplicate
    Boolean? filtering_improper_pair
    Boolean? maximum_nm_tag
    Boolean? error_rate_
    Boolean? mutation_rate_
    Boolean? somatic_mutation_rate
    Boolean? contamination_rate_
    Boolean? prior_probability_heterozygous
    Boolean? prior_probability_homozygous
    String pile_up
    String ref_dot_fa
    String in_dot_bam_dot_dot
  }
  command <<<
    biscuit pileup \
      ~{pile_up} \
      ~{ref_dot_fa} \
      ~{in_dot_bam_dot_dot} \
      ~{if (region_optional_specified) then "-g" else ""} \
      ~{if (number_of_threads) then "-q" else ""} \
      ~{if (nomeseq_mode) then "-N" else ""} \
      ~{if (somatic_mode_must) then "-S" else ""} \
      ~{if (somatic_mode_tumor) then "-T" else ""} \
      ~{if (somatic_mode_normal) then "-I" else ""} \
      ~{if (pileup_output_file) then "-o" else ""} \
      ~{if (pileup_statistics_output) then "-w" else ""} \
      ~{if (verbose_print_info) then "-v" else ""} \
      ~{if (min_base_quality) then "-b" else ""} \
      ~{if (minimum_mapping_quality) then "-m" else ""} \
      ~{if (minimum_alignment_score) then "-a" else ""} \
      ~{if (max_cytosine_retention) then "-t" else ""} \
      ~{if (minimum_read_length) then "-l" else ""} \
      ~{if (minimum_distance_end) then "-e" else ""} \
      ~{if (redistribution_ambiguous_yr) then "-r" else ""} \
      ~{if (filtering_secondary_mapping) then "-c" else ""} \
      ~{if (double_counting_cytosine) then "-d" else ""} \
      ~{if (no_filtering_duplicate) then "-u" else ""} \
      ~{if (filtering_improper_pair) then "-p" else ""} \
      ~{if (maximum_nm_tag) then "-n" else ""} \
      ~{if (error_rate_) then "-E" else ""} \
      ~{if (mutation_rate_) then "-M" else ""} \
      ~{if (somatic_mutation_rate) then "-x" else ""} \
      ~{if (contamination_rate_) then "-C" else ""} \
      ~{if (prior_probability_heterozygous) then "-P" else ""} \
      ~{if (prior_probability_homozygous) then "-Q" else ""}
  >>>
  parameter_meta {
    region_optional_specified: "region (optional, if not specified the whole bam will be processed)."
    number_of_threads: "number of threads [3]."
    nomeseq_mode: "NOMe-seq mode [off]"
    somatic_mode_must: "somatic mode, must also provide -T (tumor BAM) and -I (normal BAM) arguments [off]"
    somatic_mode_tumor: "somatic mode, tumor BAM"
    somatic_mode_normal: "somatic mode, normal BAM"
    pileup_output_file: "pileup output file [stdout]"
    pileup_statistics_output: "pileup statistics output prefix [same as output]"
    verbose_print_info: "verbose (<5 print additional info for diagnosis, >5 debug)."
    min_base_quality: "min base quality [20]."
    minimum_mapping_quality: "minimum mapping quality [40]."
    minimum_alignment_score: "minimum alignment score (from AS-tag) [40]."
    max_cytosine_retention: "max cytosine retention in a read [999999]."
    minimum_read_length: "minimum read length [10]."
    minimum_distance_end: "minimum distance to end of a read [3]."
    redistribution_ambiguous_yr: "NO redistribution of ambiguous (Y/R) calls in SNP genotyping."
    filtering_secondary_mapping: "NO filtering secondary mapping."
    double_counting_cytosine: "NO double counting cytosine in overlapping mate reads."
    no_filtering_duplicate: "NO filtering of duplicate."
    filtering_improper_pair: "NO filtering of improper pair."
    maximum_nm_tag: "maximum NM tag [999999]."
    error_rate_: "error rate [0.001]."
    mutation_rate_: "mutation rate [0.001]."
    somatic_mutation_rate: "somatic mutation rate [0.001]."
    contamination_rate_: "contamination rate [0.010]."
    prior_probability_heterozygous: "prior probability for heterozygous variant [0.333]."
    prior_probability_homozygous: "prior probability for homozygous variant [0.333]."
    pile_up: ""
    ref_dot_fa: ""
    in_dot_bam_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_pileup_output_file = "${in_pileup_output_file}"
  }
}