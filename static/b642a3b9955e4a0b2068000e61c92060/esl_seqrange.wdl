version 1.0

task EslSeqrange {
  input {
    String? in_format
  }
  command <<<
    esl-seqrange \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    in_format: ": specify that input file is in format <s>"
  }
}