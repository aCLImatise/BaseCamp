version 1.0

task IndexAndSearch {
  input {
    File? file_containing_index
    File? search_mandatoryeach_line
    Boolean? absolute_path_log
    File? absolute_path_output
    Int? size_kmers_value
    Int? number_shared_kmers
    Boolean? full_comparison_set
    Boolean? prints_version_number
  }
  command <<<
    index_and_search \
      ~{if defined(file_containing_index) then ("-i " +  '"' + file_containing_index + '"') else ""} \
      ~{if defined(search_mandatoryeach_line) then ("-s " +  '"' + search_mandatoryeach_line + '"') else ""} \
      ~{if (absolute_path_log) then "-l" else ""} \
      ~{if (absolute_path_output) then "-o" else ""} \
      ~{if defined(size_kmers_value) then ("-k " +  '"' + size_kmers_value + '"') else ""} \
      ~{if defined(number_shared_kmers) then ("-t " +  '"' + number_shared_kmers + '"') else ""} \
      ~{if (full_comparison_set) then "-f" else ""} \
      ~{if (prints_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_containing_index: ": A file containing the list of files to index - MANDATORY"
    search_mandatoryeach_line: ": A file containing the list of files to search - MANDATORY\\nEach line of the file corresponds to a set of files to search"
    absolute_path_log: "</.../>: ABSOLUTE path to log folder"
    absolute_path_output: "</.../>: ABSOLUTE path to output folder"
    size_kmers_value: ": Size of k-mers (value of k). [default=33]"
    number_shared_kmers: ": Number of shared k-mers. [default=2]"
    full_comparison_set: ": Full comparison of index set and the first searched set [default=false]"
    prints_version_number: ": Prints the version number"
  }
  output {
    File out_stdout = stdout()
    File out_absolute_path_output = "${in_absolute_path_output}"
  }
}