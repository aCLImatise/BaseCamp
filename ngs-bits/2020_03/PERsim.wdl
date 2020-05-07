version 1.0

task PERsim {
  input {
    Int insertInsert
    Int readReadThrough
    String sequencingSequencing
    File roiRoi
    Int countCount
    File out1Out1
    File out2Out2
    Int lengthLength
    Int insInsMean
    Int insInsStdev
    Float errorError
    Int maxMaxN
    String a1A1
    String a2A2
    File refRef
    Boolean vV
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    PERsim \
      ~{if defined(insertInsert) then ("- insert " +  '"' + insertInsert + '"') else ""} \
      ~{if defined(readReadThrough) then ("- read-through " +  '"' + readReadThrough + '"') else ""} \
      ~{if defined(sequencingSequencing) then ("- sequencing " +  '"' + sequencingSequencing + '"') else ""} \
      ~{if defined(roiRoi) then ("-roi " +  '"' + roiRoi + '"') else ""} \
      ~{if defined(countCount) then ("-count " +  '"' + countCount + '"') else ""} \
      ~{if defined(out1Out1) then ("-out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("-out2 " +  '"' + out2Out2 + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(insInsMean) then ("-ins_mean " +  '"' + insInsMean + '"') else ""} \
      ~{if defined(insInsStdev) then ("-ins_stdev " +  '"' + insInsStdev + '"') else ""} \
      ~{if defined(errorError) then ("-error " +  '"' + errorError + '"') else ""} \
      ~{if defined(maxMaxN) then ("-max_n " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(a1A1) then ("-a1 " +  '"' + a1A1 + '"') else ""} \
      ~{if defined(a2A2) then ("-a2 " +  '"' + a2A2 + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}