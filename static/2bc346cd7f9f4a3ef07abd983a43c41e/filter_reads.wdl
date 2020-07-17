version 1.0

task FilterReads {
  input {
    String? file_where_written
    Int? minimal_length_read
    Int? maximal_number_ns
    Float? minimal_shannon_index
    Int? maximum_number_selected
    String? given_string_will
    Boolean? prints_version_number
  }
  command <<<
    filter_reads \
      ~{if defined(file_where_written) then ("-o " +  '"' + file_where_written + '"') else ""} \
      ~{if defined(minimal_length_read) then ("-l " +  '"' + minimal_length_read + '"') else ""} \
      ~{if defined(maximal_number_ns) then ("-n " +  '"' + maximal_number_ns + '"') else ""} \
      ~{if defined(minimal_shannon_index) then ("-e " +  '"' + minimal_shannon_index + '"') else ""} \
      ~{if defined(maximum_number_selected) then ("-m " +  '"' + maximum_number_selected + '"') else ""} \
      ~{if defined(given_string_will) then ("-c " +  '"' + given_string_will + '"') else ""} \
      ~{true="-v" false="" prints_version_number}
  >>>
  parameter_meta {
    file_where_written: ": file where the boolean vector will be written [default=input_file.bv]"
    minimal_length_read: ": minimal length a read should have to be kept. [default=0]"
    maximal_number_ns: ": maximal number of Ns a read should contain to be kept. [default=any]"
    minimal_shannon_index: ": minimal Shannon index a read should have to be kept. [default=0]"
    maximum_number_selected: ": maximum number of selected reads [default=all]"
    given_string_will: ": the given string will be written in the header of the output file. [default=command line]"
    prints_version_number: ": prints the version number."
  }
}