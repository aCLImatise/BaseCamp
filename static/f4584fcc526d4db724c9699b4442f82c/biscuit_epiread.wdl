version 1.0

task BiscuitEpiread {
  input {
    Boolean? bed_input_snp
    Boolean? region_optional_specified
    Boolean? step_window_dispatching
    Boolean? number_of_threads
    Boolean? output_file
    Boolean? pairwise_mode
    Boolean? nomeseq_mode
    Boolean? verbose_print_additional
    Boolean? minimum_mapping_quality
    Boolean? max_cytosine_retention
    Boolean? minimum_read_length
    Boolean? filtering_secondary_mapping
    Boolean? no_filtering_duplicate
    Boolean? filtering_improper_bamfproperpair
    Boolean? maximum_nm_tag
    String epi_read
    String? ref_dot_fa
    String? in_dot_bam
  }
  command <<<
    biscuit epiread \
      ~{epi_read} \
      ~{ref_dot_fa} \
      ~{in_dot_bam} \
      ~{true="-B" false="" bed_input_snp} \
      ~{true="-g" false="" region_optional_specified} \
      ~{true="-s" false="" step_window_dispatching} \
      ~{true="-q" false="" number_of_threads} \
      ~{true="-o" false="" output_file} \
      ~{true="-P" false="" pairwise_mode} \
      ~{true="-N" false="" nomeseq_mode} \
      ~{true="-v" false="" verbose_print_additional} \
      ~{true="-m" false="" minimum_mapping_quality} \
      ~{true="-t" false="" max_cytosine_retention} \
      ~{true="-l" false="" minimum_read_length} \
      ~{true="-c" false="" filtering_secondary_mapping} \
      ~{true="-u" false="" no_filtering_duplicate} \
      ~{true="-p" false="" filtering_improper_bamfproperpair} \
      ~{true="-n" false="" maximum_nm_tag}
  >>>
  parameter_meta {
    bed_input_snp: "bed input for SNP display in epiread output [no SNP]"
    region_optional_specified: "region (optional, if not specified the whole bam will be processed)."
    step_window_dispatching: "step of window dispatching [100000]."
    number_of_threads: "number of threads [3]."
    output_file: "output file [stdout]"
    pairwise_mode: "pairwise mode [off]"
    nomeseq_mode: "NOMe-seq mode [off]"
    verbose_print_additional: "verbose (print additional info for diagnosis)."
    minimum_mapping_quality: "minimum mapping quality [40]."
    max_cytosine_retention: "max cytosine retention in a read [999999]."
    minimum_read_length: "minimum read length [10]."
    filtering_secondary_mapping: "NO filtering secondary mapping."
    no_filtering_duplicate: "NO filtering of duplicate."
    filtering_improper_bamfproperpair: "NO filtering of improper pair (!BAM_FPROPER_PAIR)."
    maximum_nm_tag: "maximum NM tag [999999]."
    epi_read: ""
    ref_dot_fa: ""
    in_dot_bam: ""
  }
}