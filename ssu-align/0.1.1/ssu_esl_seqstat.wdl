version 1.0

task SsuEslSeqstat {
  input {
    Boolean aA
    Boolean cC
    String inInFormat
    Boolean rnaRna
    Boolean dnaDna
    Boolean aminoAmino
  }
  command <<<
    ssu-esl-seqstat \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--amino" false="" aminoAmino}
  >>>
}