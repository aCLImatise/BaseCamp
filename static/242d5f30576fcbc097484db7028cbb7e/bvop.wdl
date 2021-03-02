version 1.0

task Bvop {
  input {
    Boolean? _performs_filebv
    File? _performs_filebv_and_filebv
    File? _performs_filebv_or_filebv
    File? _performs_filebv_and_not_filebv
    File? print_result_outputbv
    Boolean? print_information_filebv
    Boolean? prints_version_number
  }
  command <<<
    bvop \
      ~{if (_performs_filebv) then "-n" else ""} \
      ~{if defined(_performs_filebv_and_filebv) then ("-a " +  '"' + _performs_filebv_and_filebv + '"') else ""} \
      ~{if defined(_performs_filebv_or_filebv) then ("-o " +  '"' + _performs_filebv_or_filebv + '"') else ""} \
      ~{if defined(_performs_filebv_and_not_filebv) then ("-d " +  '"' + _performs_filebv_and_not_filebv + '"') else ""} \
      ~{if defined(print_result_outputbv) then ("-p " +  '"' + print_result_outputbv + '"') else ""} \
      ~{if (print_information_filebv) then "-i" else ""} \
      ~{if (prints_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _performs_filebv: ": performs NOT on file1.bv"
    _performs_filebv_and_filebv: ": performs file1.bv AND file2.bv"
    _performs_filebv_or_filebv: ": performs file1.bv OR file2.bv"
    _performs_filebv_and_not_filebv: ": performs file1.bv AND (NOT file2.bv)"
    print_result_outputbv: ": print result in file output.bv [Default=stdout]"
    print_information_filebv: ": print information about file1.bv"
    prints_version_number: ": Prints the version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_print_result_outputbv = "${in_print_result_outputbv}"
  }
}