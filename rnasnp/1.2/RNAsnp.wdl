version 1.0

task RNAsnp {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    String seqSeq
    String snpSnp
    Int modeMode
    Int winsizeWinsizeFold
  }
  command <<<
    RNAsnp \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(winsizeWinsizeFold) then ("--winsizeFold " +  '"' + winsizeWinsizeFold + '"') else ""}
  >>>
}