version 1.0

task EslAlistat {
  input {
    String inInFormat
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    Boolean smallSmall
    String listList
    String icIcInfo
    String rRInfo
    String pcPcInfo
    String psPsInfo
    String iIInfo
    String cCInfo
    Boolean noamNoamBig
    String bpBpInfo
    Boolean weightWeight
  }
  command <<<
    esl-alistat \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--small" false="" smallSmall} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(icIcInfo) then ("--icinfo " +  '"' + icIcInfo + '"') else ""} \
      ~{if defined(rRInfo) then ("--rinfo " +  '"' + rRInfo + '"') else ""} \
      ~{if defined(pcPcInfo) then ("--pcinfo " +  '"' + pcPcInfo + '"') else ""} \
      ~{if defined(psPsInfo) then ("--psinfo " +  '"' + psPsInfo + '"') else ""} \
      ~{if defined(iIInfo) then ("--iinfo " +  '"' + iIInfo + '"') else ""} \
      ~{if defined(cCInfo) then ("--cinfo " +  '"' + cCInfo + '"') else ""} \
      ~{true="--noambig" false="" noamNoamBig} \
      ~{if defined(bpBpInfo) then ("--bpinfo " +  '"' + bpBpInfo + '"') else ""} \
      ~{true="--weight" false="" weightWeight}
  >>>
}