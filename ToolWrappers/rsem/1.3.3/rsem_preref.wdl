version 1.0

task Rsempreref {
  input {
    Boolean? polyalen_specify_length
    Boolean? exceptionf_file_contains
    Boolean? _quiet
  }
  command <<<
    rsem_preref \
      ~{if (polyalen_specify_length) then "-l" else ""} \
      ~{if (exceptionf_file_contains) then "-f" else ""} \
      ~{if (_quiet) then "-q" else ""}
  >>>
  parameter_meta {
    polyalen_specify_length: ": polyALen: specify the length of polyA tail you want to pad. Default is 100"
    exceptionf_file_contains: ": exceptionF: file contains a list of exception reference ids. IDs starts from 1. Must set if polyAChoice = 2"
    _quiet: ": quiet"
  }
  output {
    File out_stdout = stdout()
  }
}