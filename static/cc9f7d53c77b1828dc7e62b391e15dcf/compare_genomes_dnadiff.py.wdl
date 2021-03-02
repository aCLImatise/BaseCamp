version 1.0

task CompareGenomesDnadiffpy {
  input {
    File? save_pickled_results
    File? save_dnadiff_report
    Directory? use_working_directory
    Boolean? keep_dnadiff_result
    Boolean? print_dnadiff_output
    String reference_fast_a
    String target_fast_a
  }
  command <<<
    compare_genomes_dnadiff_py \
      ~{reference_fast_a} \
      ~{target_fast_a} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(save_dnadiff_report) then ("-r " +  '"' + save_dnadiff_report + '"') else ""} \
      ~{if defined(use_working_directory) then ("-d " +  '"' + use_working_directory + '"') else ""} \
      ~{if (keep_dnadiff_result) then "-k" else ""} \
      ~{if (print_dnadiff_output) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    save_pickled_results: "Save pickled results in this file (None)."
    save_dnadiff_report: "Save dnadiff report in this file (None)."
    use_working_directory: "Use this working directory instead of a temporary\\ndirectory (None)."
    keep_dnadiff_result: "Keep dnadiff result files (False)."
    print_dnadiff_output: "Print out dnadiff output (False)."
    reference_fast_a: "Reference fasta."
    target_fast_a: "Target fasta."
  }
  output {
    File out_stdout = stdout()
  }
}