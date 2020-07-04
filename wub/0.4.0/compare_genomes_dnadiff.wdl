version 1.0

task CompareGenomesDnadiff.py {
  input {
    String? save_pickled_results
    String? save_dnadiff_report
    String? use_working_directory
    Boolean? keep_dnadiff_result
    Boolean? print_dnadiff_output
    String reference_fast_a
    String target_fast_a
  }
  command <<<
    compare_genomes_dnadiff.py \
      ~{reference_fast_a} \
      ~{target_fast_a} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(save_dnadiff_report) then ("-r " +  '"' + save_dnadiff_report + '"') else ""} \
      ~{if defined(use_working_directory) then ("-d " +  '"' + use_working_directory + '"') else ""} \
      ~{true="-k" false="" keep_dnadiff_result} \
      ~{true="-v" false="" print_dnadiff_output}
  >>>
  parameter_meta {
    save_pickled_results: "Save pickled results in this file (None)."
    save_dnadiff_report: "Save dnadiff report in this file (None)."
    use_working_directory: "Use this working directory instead of a temporary directory (None)."
    keep_dnadiff_result: "Keep dnadiff result files (False)."
    print_dnadiff_output: "Print out dnadiff output (False)."
    reference_fast_a: "Reference fasta."
    target_fast_a: "Target fasta."
  }
}