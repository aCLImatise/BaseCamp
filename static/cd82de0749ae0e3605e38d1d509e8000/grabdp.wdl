version 1.0

task Grabdp {
  input {
    String iI
    String dbDb
    String idId
    Boolean dpDpStyle
    Boolean dumpDumpMatchProbs
  }
  command <<<
    grabdp \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{true="-dpstyle" false="" dpDpStyle} \
      ~{true="-dump_match_probs" false="" dumpDumpMatchProbs}
  >>>
}