version 1.0

task Bed2nt2aa.pl {
  input {
    Boolean bedBed
    Boolean faFa
    Boolean aaAa
    Boolean stdoutStdout
    Boolean manMan
  }
  command <<<
    bed2nt2aa.pl \
      ~{true="--bed" false="" bedBed} \
      ~{true="--fa" false="" faFa} \
      ~{true="--aa" false="" aaAa} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--man" false="" manMan}
  >>>
}