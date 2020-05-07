version 1.0

task EslAlipid {
  input {
    String inInFormat
    String outOutFormat
    Boolean noheaderNoheader
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
    String? msaMsaFile
  }
  command <<<
    esl-alipid \
      ~{msaMsaFile} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--noheader" false="" noheaderNoheader} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino}
  >>>
}