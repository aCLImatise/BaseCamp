version 1.0

task Minirmd {
  input {
    File? i
    File? file_paired_end
    File? output_file
    Int? of_allowed_mismatch
    File? file_store_values
    String? duplicates_reversecomplement_strand
    Int? number_of_threads
    String? help_message
    String? parameters
  }
  command <<<
    minirmd \
      ~{parameters} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(file_paired_end) then ("-f " +  '"' + file_paired_end + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(of_allowed_mismatch) then ("-d " +  '"' + of_allowed_mismatch + '"') else ""} \
      ~{if defined(file_store_values) then ("-k " +  '"' + file_store_values + '"') else ""} \
      ~{if defined(duplicates_reversecomplement_strand) then ("-r " +  '"' + duplicates_reversecomplement_strand + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(help_message) then ("-h " +  '"' + help_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/minirmd:1.1--he513fc3_0"
  }
  parameter_meta {
    i: "file"
    file_paired_end: "file, if paired end"
    output_file: "output file"
    of_allowed_mismatch: "of allowed mismatch"
    file_store_values: "file to store values of k"
    duplicates_reversecomplement_strand: "duplicates on reverse-complement strand"
    number_of_threads: "number of threads"
    help_message: "help message"
    parameters: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}