version 1.0

task PocheckSeqfilein {
  input {
    Boolean? options
  }
  command <<<
    pocheck seqfile_in \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}