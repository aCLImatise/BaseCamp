version 1.0

task TwoBitToFa {
  input {
    String seqSeq
    String startStart
    String endEnd
    File seqSeqList
    Boolean noNoMask
    String bptBpt
    String bedBed
    Boolean bedBedPos
    Boolean udcUdcDir
    String? orOr
    String? orOr
  }
  command <<<
    twoBitToFa \
      ~{orOr} \
      ~{if defined(seqSeq) then ("-seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("-end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(seqSeqList) then ("-seqList " +  '"' + seqSeqList + '"') else ""} \
      ~{true="-noMask" false="" noNoMask} \
      ~{if defined(bptBpt) then ("-bpt " +  '"' + bptBpt + '"') else ""} \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{true="-bedPos" false="" bedBedPos} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{orOr}
  >>>
}