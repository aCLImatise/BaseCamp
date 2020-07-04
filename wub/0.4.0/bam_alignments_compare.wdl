version 1.0

task BamAlignmentsCompare.py {
  input {
    String? tolerance_when_performing
    Boolean? strict_comparison_alignment
    String? report_pdf_bamalignmentscomparepdf
    String? save_pickled_results
    String? save_results_none
    String? input_format_bam
    Boolean? quiet_print_bar
    String bam_one
    String bam_two
  }
  command <<<
    bam_alignments_compare.py \
      ~{bam_one} \
      ~{bam_two} \
      ~{if defined(tolerance_when_performing) then ("-w " +  '"' + tolerance_when_performing + '"') else ""} \
      ~{true="-g" false="" strict_comparison_alignment} \
      ~{if defined(report_pdf_bamalignmentscomparepdf) then ("-r " +  '"' + report_pdf_bamalignmentscomparepdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(save_results_none) then ("-t " +  '"' + save_results_none + '"') else ""} \
      ~{if defined(input_format_bam) then ("-f " +  '"' + input_format_bam + '"') else ""} \
      ~{true="-Q" false="" quiet_print_bar}
  >>>
  parameter_meta {
    tolerance_when_performing: "Tolerance when performing coarse comparison of alignments (50)."
    strict_comparison_alignment: "Do strict comparison of alignment flags."
    report_pdf_bamalignmentscomparepdf: "Report PDF (bam_alignments_compare.pdf)."
    save_pickled_results: "Save pickled results in this file (bam_alignments_compare.pk)."
    save_results_none: "Save results in tsv format in this file (None)."
    input_format_bam: "Input format (BAM)."
    quiet_print_bar: "Be quiet and do not print progress bar (False)."
    bam_one: "First input BAM file."
    bam_two: "Second input BAM file."
  }
}