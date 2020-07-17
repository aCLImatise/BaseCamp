version 1.0

task IndexAndSearch {
  input {
    File? file_index_mandatory
    File? file_containing_search
    Boolean? absolute_path_log
    Boolean? absolute_path_output
    String? size_kmers_value
    String? number_shared_kmers
    Boolean? full_comparison_index
    Boolean? prints_version_number
  }
  command <<<
    index_and_search \
      ~{if defined(file_index_mandatory) then ("-i " +  '"' + file_index_mandatory + '"') else ""} \
      ~{if defined(file_containing_search) then ("-s " +  '"' + file_containing_search + '"') else ""} \
      ~{true="-l" false="" absolute_path_log} \
      ~{true="-o" false="" absolute_path_output} \
      ~{if defined(size_kmers_value) then ("-k " +  '"' + size_kmers_value + '"') else ""} \
      ~{if defined(number_shared_kmers) then ("-t " +  '"' + number_shared_kmers + '"') else ""} \
      ~{true="-f" false="" full_comparison_index} \
      ~{true="-v" false="" prints_version_number}
  >>>
  parameter_meta {
    file_index_mandatory: ": A file containing the list of files to index - MANDATORY"
    file_containing_search: ": A file containing the list of files to search - MANDATORY Each line of the file corresponds to a set of files to search"
    absolute_path_log: "</.../>: ABSOLUTE path to log folder"
    absolute_path_output: "</.../>: ABSOLUTE path to output folder"
    size_kmers_value: ": Size of k-mers (value of k). [default=33]"
    number_shared_kmers: ": Number of shared k-mers. [default=2]"
    full_comparison_index: ": Full comparison of index set and the first searched set [default=false]"
    prints_version_number: ": Prints the version number"
  }
}