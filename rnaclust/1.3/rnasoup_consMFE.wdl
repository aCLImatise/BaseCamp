version 1.0

task RnasoupConsMFE.pl {
  input {
    Boolean fastFastA
    Boolean dirDir
  }
  command <<<
    rnasoup_consMFE.pl \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--dir" false="" dirDir}
  >>>
}