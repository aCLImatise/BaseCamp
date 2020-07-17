version 1.0

task Bvop {
  input {
    Boolean? performs_not_filebv
    File? _performs_filebv_and_filebv
    File? _performs_filebv_or_filebv
    File? performs_filebv_not_filebv
    String? print_result_file
    Boolean? print_information_filebv
    Boolean? prints_version_number
  }
  command <<<
    bvop \
      ~{true="-n" false="" performs_not_filebv} \
      ~{if defined(_performs_filebv_and_filebv) then ("-a " +  '"' + _performs_filebv_and_filebv + '"') else ""} \
      ~{if defined(_performs_filebv_or_filebv) then ("-o " +  '"' + _performs_filebv_or_filebv + '"') else ""} \
      ~{if defined(performs_filebv_not_filebv) then ("-d " +  '"' + performs_filebv_not_filebv + '"') else ""} \
      ~{if defined(print_result_file) then ("-p " +  '"' + print_result_file + '"') else ""} \
      ~{true="-i" false="" print_information_filebv} \
      ~{true="-v" false="" prints_version_number}
  >>>
  parameter_meta {
    performs_not_filebv: ": performs NOT on file1.bv"
    _performs_filebv_and_filebv: ": performs file1.bv AND file2.bv"
    _performs_filebv_or_filebv: ": performs file1.bv OR file2.bv"
    performs_filebv_not_filebv: ": performs file1.bv AND (NOT file2.bv)"
    print_result_file: ": print result in file output.bv [Default=stdout]"
    print_information_filebv: ": print information about file1.bv"
    prints_version_number: ": Prints the version number and exit"
  }
}