version 1.0

task BiscuitEpiread {
  input {
    Boolean? bed_input_snp
    Boolean? region_optional_specified
    Boolean? step_window_dispatching
    Boolean? number_of_threads
    File? output_file
    Boolean? pairwise_mode
    Boolean? nomeseq_mode
    Boolean? verbose_print_info
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
      ~{if (bed_input_snp) then "-B" else ""} \
      ~{if (region_optional_specified) then "-g" else ""} \
      ~{if (step_window_dispatching) then "-s" else ""} \
      ~{if (number_of_threads) then "-q" else ""} \
      ~{if (output_file) then "-o" else ""} \
      ~{if (pairwise_mode) then "-P" else ""} \
      ~{if (nomeseq_mode) then "-N" else ""} \
      ~{if (verbose_print_info) then "-v" else ""} \
      ~{if (minimum_mapping_quality) then "-m" else ""} \
      ~{if (max_cytosine_retention) then "-t" else ""} \
      ~{if (minimum_read_length) then "-l" else ""} \
      ~{if (filtering_secondary_mapping) then "-c" else ""} \
      ~{if (no_filtering_duplicate) then "-u" else ""} \
      ~{if (filtering_improper_bamfproperpair) then "-p" else ""} \
      ~{if (maximum_nm_tag) then "-n" else ""}
  >>>
  parameter_meta {
    bed_input_snp: "bed input for SNP display in epiread output [no SNP]"
    region_optional_specified: "region (optional, if not specified the whole bam will be processed)."
    step_window_dispatching: "step of window dispatching [100000]."
    number_of_threads: "number of threads [3]."
    output_file: "output file [stdout]"
    pairwise_mode: "pairwise mode [off]"
    nomeseq_mode: "NOMe-seq mode [off]"
    verbose_print_info: "verbose (print additional info for diagnosis)."
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
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}