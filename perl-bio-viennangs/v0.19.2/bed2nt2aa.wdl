version 1.0

task Bed2nt2aa.pl {
  input {
    Boolean? bed
    Boolean? fa
    Boolean? aa
    Boolean? stdout
    Boolean? man
  }
  command <<<
    bed2nt2aa.pl \
      ~{true="--bed" false="" bed} \
      ~{true="--fa" false="" fa} \
      ~{true="--aa" false="" aa} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bed: "Input file in BED6 format (mandatory)"
    fa: "Input file in Fasta format (mandatory)"
    aa: "Translate nucleotide into amino acid sequences, providing all three possible frames"
    stdout: "Write output to STDOUT instead of an output file 'sequence.fa'"
    man: "Prints the manual page and exits"
  }
}