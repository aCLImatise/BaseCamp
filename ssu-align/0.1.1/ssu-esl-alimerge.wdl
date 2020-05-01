version 1.0

task SsuEslAlimerge {
  input {
    String oO
    Boolean vV
    Boolean smallSmall
    Boolean rfRfOnly
    String outOutFormat
    Boolean rnaRna
    Boolean dnaDna
    Boolean aminoAmino
  }
  command <<<
    ssu-esl-alimerge \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="--small" false="" smallSmall} \
      ~{true="--rfonly" false="" rfRfOnly} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--amino" false="" aminoAmino}
  >>>
}