version 1.0

task SsuEslSeqrange {
  input {
    String? in_format
  }
  command <<<
    ssu-esl-seqrange \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    in_format: ": specify that input file is in format <s>"
  }
}