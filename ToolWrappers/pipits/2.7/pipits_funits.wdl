version 1.0

task PipitsFunits {
  input {
    File? joined_quality_filtered
    Directory? directory_output_results
    String? subregion_its_extracted
    Boolean? retain_intermediate_files
    Boolean? verbose_mode
    Int? number_of_threads
  }
  command <<<
    pipits_funits \
      ~{if defined(joined_quality_filtered) then ("-i " +  '"' + joined_quality_filtered + '"') else ""} \
      ~{if defined(directory_output_results) then ("-o " +  '"' + directory_output_results + '"') else ""} \
      ~{if defined(subregion_its_extracted) then ("-x " +  '"' + subregion_its_extracted + '"') else ""} \
      ~{if (retain_intermediate_files) then "-r" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    joined_quality_filtered: "[REQUIRED] Joined, quality filtered sequences in FASTA.\\nTypically output from pipits_prep"
    directory_output_results: "[REQUIRED] Directory to output results"
    subregion_its_extracted: "[REQUIRED] Subregion of ITS to be extracted. Must choose\\neither \\\"ITS1\\\" or \\\"ITS2\\\" E.g. -x ITS2"
    retain_intermediate_files: "Retain intermediate files (Beware intermediate files use\\nexcessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_results = "${in_directory_output_results}"
  }
}