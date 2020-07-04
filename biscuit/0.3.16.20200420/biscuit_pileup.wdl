version 1.0

task BiscuitPileup {
  input {
    Boolean? region_optional_specified
    Boolean? number_of_threads
    Boolean? nomeseq_mode
    Boolean? somatic_mode_must
    Boolean? somatic_mode_tumor
    Boolean? somatic_mode_normal
    Boolean? pileup_output_file
    Boolean? pileup_statistics_output
    Boolean? verbose_print_additional
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
      ~{true="-g" false="" region_optional_specified} \
      ~{true="-q" false="" number_of_threads} \
      ~{true="-N" false="" nomeseq_mode} \
      ~{true="-S" false="" somatic_mode_must} \
      ~{true="-T" false="" somatic_mode_tumor} \
      ~{true="-I" false="" somatic_mode_normal} \
      ~{true="-o" false="" pileup_output_file} \
      ~{true="-w" false="" pileup_statistics_output} \
      ~{true="-v" false="" verbose_print_additional} \
      ~{true="-b" false="" min_base_quality} \
      ~{true="-m" false="" minimum_mapping_quality} \
      ~{true="-a" false="" minimum_alignment_score} \
      ~{true="-t" false="" max_cytosine_retention} \
      ~{true="-l" false="" minimum_read_length} \
      ~{true="-e" false="" minimum_distance_end} \
      ~{true="-r" false="" redistribution_ambiguous_yr} \
      ~{true="-c" false="" filtering_secondary_mapping} \
      ~{true="-d" false="" double_counting_cytosine} \
      ~{true="-u" false="" no_filtering_duplicate} \
      ~{true="-p" false="" filtering_improper_pair} \
      ~{true="-n" false="" maximum_nm_tag} \
      ~{true="-E" false="" error_rate_} \
      ~{true="-M" false="" mutation_rate_} \
      ~{true="-x" false="" somatic_mutation_rate} \
      ~{true="-C" false="" contamination_rate_} \
      ~{true="-P" false="" prior_probability_heterozygous} \
      ~{true="-Q" false="" prior_probability_homozygous}
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
    verbose_print_additional: "verbose (<5 print additional info for diagnosis, >5 debug)."
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
}