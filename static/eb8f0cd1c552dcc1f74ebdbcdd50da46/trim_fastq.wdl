version 1.0

task TrimFastq.pl {
  input {
    Boolean fastFastQ
    Boolean upUp
    Boolean downDown
    Boolean a5A5
    Boolean manMan
  }
  command <<<
    trim_fastq.pl \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--up" false="" upUp} \
      ~{true="--down" false="" downDown} \
      ~{true="--a5" false="" a5A5} \
      ~{true="--man" false="" manMan}
  >>>
}