version 1.0

task SsuEslCompalign {
  input {
    Boolean cC
    Boolean pP
    String pPMask
    String c2dC2dFile
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
  }
  command <<<
    ssu-esl-compalign \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{if defined(pPMask) then ("--p-mask " +  '"' + pPMask + '"') else ""} \
      ~{if defined(c2dC2dFile) then ("--c2dfile " +  '"' + c2dC2dFile + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna}
  >>>
}