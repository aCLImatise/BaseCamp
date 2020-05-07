version 1.0

task EaselAlistat {
  input {
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
  }
  command <<<
    easel alistat \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino}
  >>>
}