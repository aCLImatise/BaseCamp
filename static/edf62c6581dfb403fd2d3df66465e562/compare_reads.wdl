version 1.0

task CompareReads {
  input {
    File? file_containing_files
    File? file_containing_file
    Boolean? absolute_path_log
    File? absolute_path_output
    Int? size_kmers_value
    Int? number_shared_kmers
    Boolean? prints_version_number
  }
  command <<<
    compare_reads \
      ~{if defined(file_containing_files) then ("-i " +  '"' + file_containing_files + '"') else ""} \
      ~{if defined(file_containing_file) then ("-s " +  '"' + file_containing_file + '"') else ""} \
      ~{if (absolute_path_log) then "-l" else ""} \
      ~{if (absolute_path_output) then "-o" else ""} \
      ~{if defined(size_kmers_value) then ("-k " +  '"' + size_kmers_value + '"') else ""} \
      ~{if defined(number_shared_kmers) then ("-t " +  '"' + number_shared_kmers + '"') else ""} \
      ~{if (prints_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_containing_files: ": A file containing the list of files to index (comma separated) - MANDATORY\\nEach line of the file corresponds to a set of files (comma separated)"
    file_containing_file: ": A file containing the list of file sets to search - MANDATORY\\nEach line of the file corresponds to a set of files (comma separated)"
    absolute_path_log: "</.../>: ABSOLUTE path to log folder"
    absolute_path_output: "</.../>: ABSOLUTE path to output folder"
    size_kmers_value: ": Size of k-mers (value of k). [default=32]"
    number_shared_kmers: ": Number of shared k-mers. [default=2]"
    prints_version_number: ": Prints the version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_absolute_path_output = "${in_absolute_path_output}"
  }
}