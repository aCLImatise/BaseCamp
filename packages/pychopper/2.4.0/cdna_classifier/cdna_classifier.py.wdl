version 1.0

task CdnaClassifierpy {
  input {
    String? primers_fasta
    File? file_hmms_none
    File? file_specify_configurations
    String? cutoff_parameter_autotuned
    Int? minimum_mean_base
    Int? minimum_segment_length
    String? report_pdf_cdnaclassifierreportpdf
    File? write_unclassified_reads
    Int? write_fragments_failing
    File? write_rescued_reads
    File? write_statistics_file
    File? write_reads_filter
    Int? approximate_number_reads
    Int? number_samples_taken
    File? write_alignment_scores
    String? detection_method_phmm
    Int? protocolspecific_read_rescue
    Boolean? keep_primers_trim
    Int? number_threads_use
    Int? maximum_number_reads
    File? stats_tab_separated
    String input_fast_x
    String output_fast_x
  }
  command <<<
    cdna_classifier_py \
      ~{input_fast_x} \
      ~{output_fast_x} \
      ~{if defined(primers_fasta) then ("-b " +  '"' + primers_fasta + '"') else ""} \
      ~{if defined(file_hmms_none) then ("-g " +  '"' + file_hmms_none + '"') else ""} \
      ~{if defined(file_specify_configurations) then ("-c " +  '"' + file_specify_configurations + '"') else ""} \
      ~{if defined(cutoff_parameter_autotuned) then ("-q " +  '"' + cutoff_parameter_autotuned + '"') else ""} \
      ~{if defined(minimum_mean_base) then ("-Q " +  '"' + minimum_mean_base + '"') else ""} \
      ~{if defined(minimum_segment_length) then ("-z " +  '"' + minimum_segment_length + '"') else ""} \
      ~{if defined(report_pdf_cdnaclassifierreportpdf) then ("-r " +  '"' + report_pdf_cdnaclassifierreportpdf + '"') else ""} \
      ~{if defined(write_unclassified_reads) then ("-u " +  '"' + write_unclassified_reads + '"') else ""} \
      ~{if defined(write_fragments_failing) then ("-l " +  '"' + write_fragments_failing + '"') else ""} \
      ~{if defined(write_rescued_reads) then ("-w " +  '"' + write_rescued_reads + '"') else ""} \
      ~{if defined(write_statistics_file) then ("-S " +  '"' + write_statistics_file + '"') else ""} \
      ~{if defined(write_reads_filter) then ("-K " +  '"' + write_reads_filter + '"') else ""} \
      ~{if defined(approximate_number_reads) then ("-Y " +  '"' + approximate_number_reads + '"') else ""} \
      ~{if defined(number_samples_taken) then ("-L " +  '"' + number_samples_taken + '"') else ""} \
      ~{if defined(write_alignment_scores) then ("-A " +  '"' + write_alignment_scores + '"') else ""} \
      ~{if defined(detection_method_phmm) then ("-m " +  '"' + detection_method_phmm + '"') else ""} \
      ~{if defined(protocolspecific_read_rescue) then ("-x " +  '"' + protocolspecific_read_rescue + '"') else ""} \
      ~{if (keep_primers_trim) then "-p" else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if defined(maximum_number_reads) then ("-B " +  '"' + maximum_number_reads + '"') else ""} \
      ~{if defined(stats_tab_separated) then ("-D " +  '"' + stats_tab_separated + '"') else ""}
  >>>
  parameter_meta {
    primers_fasta: "Primers fasta."
    file_hmms_none: "File with custom profile HMMs (None)."
    file_specify_configurations: "File to specify primer configurations for each\\ndirection (None)."
    cutoff_parameter_autotuned: "Cutoff parameter (autotuned)."
    minimum_mean_base: "Minimum mean base quality (7.0)."
    minimum_segment_length: "Minimum segment length (50)."
    report_pdf_cdnaclassifierreportpdf: "Report PDF (cdna_classifier_report.pdf)."
    write_unclassified_reads: "Write unclassified reads to this file."
    write_fragments_failing: "Write fragments failing the length filter in this file."
    write_rescued_reads: "Write rescued reads to this file."
    write_statistics_file: "Write statistics to this file."
    write_reads_filter: "Write reads failing mean quality filter to this file."
    approximate_number_reads: "Approximate number of reads used for tuning the cutoff\\nparameter (10000)."
    number_samples_taken: "Number of samples taken when tuning cutoff parameter\\n(30)."
    write_alignment_scores: "Write alignment scores to this BED file."
    detection_method_phmm: "Detection method: phmm or edlib (phmm)."
    protocolspecific_read_rescue: "Protocol-specific read rescue: DCS109 (None)."
    keep_primers_trim: "Keep primers, but trim the rest."
    number_threads_use: "Number of threads to use (8)."
    maximum_number_reads: "Maximum number of reads processed in each batch\\n(1000000)."
    stats_tab_separated: "stats        Tab separated file with per-read stats (None)."
    input_fast_x: "Input file."
    output_fast_x: "Output file."
  }
  output {
    File out_stdout = stdout()
  }
}