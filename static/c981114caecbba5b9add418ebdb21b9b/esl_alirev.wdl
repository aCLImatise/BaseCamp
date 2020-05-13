version 1.0

task EslAlirev {
  input {
    String inInFormat
    String outOutFormat
    Boolean dnaDna
    Boolean rnaRna
  }
  command <<<
    esl-alirev \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna}
  >>>
}