version 1.0

task EslWeight {
  input {
    Boolean gG
    Boolean pP
    Boolean bB
    Boolean fF
    String oO
    String idId
    String idfIdf
    String inInFormat
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
  }
  command <<<
    esl-weight \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(idfIdf) then ("--idf " +  '"' + idfIdf + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna}
  >>>
}