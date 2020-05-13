version 1.0

task Statal {
  input {
    String inIn
    String compareCompareSet
    String forceForceSelect
    String matrixMatrix
    Boolean sgcSgc
    Boolean sgtSgt
    Boolean sscSsc
    Boolean sstSst
    Boolean sfcSfc
    Boolean sftSft
    Boolean sidentSident
    Boolean scolScolIdentT
    String wW
    String gwGw
    String swSw
    String cwCw
  }
  command <<<
    statal \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(compareCompareSet) then ("-compareset " +  '"' + compareCompareSet + '"') else ""} \
      ~{if defined(forceForceSelect) then ("-forceselect " +  '"' + forceForceSelect + '"') else ""} \
      ~{if defined(matrixMatrix) then ("-matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{true="-sgc" false="" sgcSgc} \
      ~{true="-sgt" false="" sgtSgt} \
      ~{true="-ssc" false="" sscSsc} \
      ~{true="-sst" false="" sstSst} \
      ~{true="-sfc" false="" sfcSfc} \
      ~{true="-sft" false="" sftSft} \
      ~{true="-sident" false="" sidentSident} \
      ~{true="-scolidentt" false="" scolScolIdentT} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(gwGw) then ("-gw " +  '"' + gwGw + '"') else ""} \
      ~{if defined(swSw) then ("-sw " +  '"' + swSw + '"') else ""} \
      ~{if defined(cwCw) then ("-cw " +  '"' + cwCw + '"') else ""}
  >>>
}