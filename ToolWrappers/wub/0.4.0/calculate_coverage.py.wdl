version 1.0

task CalculateCoveragepy {
  input {
    String? input_format_fastq
    Int? genome_size_none
    File? save_pickled_results
  }
  command <<<
    calculate_coverage_py \
      ~{if defined(input_format_fastq) then ("-f " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(genome_size_none) then ("-s " +  '"' + genome_size_none + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    genome_size_none: "Genome size (None)."
    save_pickled_results: "Save pickled results in this file."
  }
  output {
    File out_stdout = stdout()
  }
}