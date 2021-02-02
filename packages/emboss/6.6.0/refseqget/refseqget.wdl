version 1.0

task Refseqget {
  input {
    Boolean? ref_sequence
  }
  command <<<
    refseqget \
      ~{if (ref_sequence) then "-refsequence" else ""}
  >>>
  parameter_meta {
    ref_sequence: ": enter refseq value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}