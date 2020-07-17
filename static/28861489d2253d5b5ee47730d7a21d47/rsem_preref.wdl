version 1.0

task RsemPreref {
  input {
    Boolean? polyalen_specify_length
    Boolean? exceptionf_file_contains
    Boolean? _quiet
  }
  command <<<
    rsem-preref \
      ~{true="-l" false="" polyalen_specify_length} \
      ~{true="-f" false="" exceptionf_file_contains} \
      ~{true="-q" false="" _quiet}
  >>>
  parameter_meta {
    polyalen_specify_length: ": polyALen: specify the length of polyA tail you want to pad. Default is 100"
    exceptionf_file_contains: ": exceptionF: file contains a list of exception reference ids. IDs starts from 1. Must set if polyAChoice = 2"
    _quiet: ": quiet"
  }
}