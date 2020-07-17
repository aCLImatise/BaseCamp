version 1.0

task CompareGenomesLastal.py {
  input {
    String? save_pickled_results
    String? parameters_passed_lastal
    String? save_details_lastal
    Boolean? filter_best_alignment
    String? report_alignment_details
    String reference_fast_a
    String target_fast_a
  }
  command <<<
    compare_genomes_lastal.py \
      ~{reference_fast_a} \
      ~{target_fast_a} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(parameters_passed_lastal) then ("-l " +  '"' + parameters_passed_lastal + '"') else ""} \
      ~{if defined(save_details_lastal) then ("-t " +  '"' + save_details_lastal + '"') else ""} \
      ~{true="-f" false="" filter_best_alignment} \
      ~{if defined(report_alignment_details) then ("-r " +  '"' + report_alignment_details + '"') else ""}
  >>>
  parameter_meta {
    save_pickled_results: "Save pickled results in this file (None)."
    parameters_passed_lastal: "Parameters passed to lastal in the <arg>:value,... format (a:1,b:1)."
    save_details_lastal: "Save details of lastal alignment in this tab-separated file (None)."
    filter_best_alignment: "Do *not* filter for best alignment per query."
    report_alignment_details: "Report with alignment details plot (None)."
    reference_fast_a: "Reference fasta."
    target_fast_a: "Target fasta."
  }
}