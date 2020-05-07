version 1.0

task SsuEslShuffle {
  input {
    String oO
    String nN
    String lL
    Boolean rR
    String wW
    Boolean rnaRna
    Boolean dnaDna
    Boolean aminoAmino
    String seedSeed
    String inInFormat
  }
  command <<<
    ssu-esl-shuffle \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--amino" false="" aminoAmino} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""}
  >>>
}