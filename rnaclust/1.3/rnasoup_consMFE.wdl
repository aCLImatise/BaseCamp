version 1.0

task RnasoupConsMFE.pl {
  input {
    Boolean? fast_a
    Boolean? dir
  }
  command <<<
    rnasoup_consMFE.pl \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--dir" false="" dir}
  >>>
  parameter_meta {
    fast_a: "Original FASTA file with sequences which have been clustered."
    dir: "Directory containing intermediate*.aln files."
  }
}