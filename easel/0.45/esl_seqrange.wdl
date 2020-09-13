version 1.0

task Eslseqrange {
  input {
    File? in_format
  }
  command <<<
    esl_seqrange \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    in_format: ": specify that input file is in format <s>"
  }
  output {
    File out_stdout = stdout()
  }
}