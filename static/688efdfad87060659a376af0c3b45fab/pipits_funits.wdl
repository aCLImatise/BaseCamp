version 1.0

task PipitsFunits {
  input {
    File? joined_filtered_sequences
    String? directory_output_results
    String? subregion_its_extracted
    Boolean? retain_intermediate_files
    Boolean? verbose_mode
    Int? number_of_threads
  }
  command <<<
    pipits_funits \
      ~{if defined(joined_filtered_sequences) then ("-i " +  '"' + joined_filtered_sequences + '"') else ""} \
      ~{if defined(directory_output_results) then ("-o " +  '"' + directory_output_results + '"') else ""} \
      ~{if defined(subregion_its_extracted) then ("-x " +  '"' + subregion_its_extracted + '"') else ""} \
      ~{true="-r" false="" retain_intermediate_files} \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  parameter_meta {
    joined_filtered_sequences: "[REQUIRED] Joined, quality filtered sequences in FASTA. Typically output from pipits_prep"
    directory_output_results: "[REQUIRED] Directory to output results"
    subregion_its_extracted: "[REQUIRED] Subregion of ITS to be extracted. Must choose either \"ITS1\" or \"ITS2\" E.g. -x ITS2"
    retain_intermediate_files: "Retain intermediate files (Beware intermediate files use excessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
  }
}