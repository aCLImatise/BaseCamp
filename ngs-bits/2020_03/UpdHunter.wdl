version 1.0

task UpdHunter {
  input {
    File inIn
    String cC
    String fF
    String mM
    File outOut
    File excludeExclude
    Int varVarMinDp
    Float varVarMinQ
    Boolean varVarUseIndels
    Float extExtMarkerPerc
    Float extExtSizePerc
    Float regRegMinKb
    Int regRegMinMarkers
    Float regRegMinQ
    Boolean debugDebug
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    UpdHunter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(varVarMinDp) then ("-var_min_dp " +  '"' + varVarMinDp + '"') else ""} \
      ~{if defined(varVarMinQ) then ("-var_min_q " +  '"' + varVarMinQ + '"') else ""} \
      ~{true="-var_use_indels" false="" varVarUseIndels} \
      ~{if defined(extExtMarkerPerc) then ("-ext_marker_perc " +  '"' + extExtMarkerPerc + '"') else ""} \
      ~{if defined(extExtSizePerc) then ("-ext_size_perc " +  '"' + extExtSizePerc + '"') else ""} \
      ~{if defined(regRegMinKb) then ("-reg_min_kb " +  '"' + regRegMinKb + '"') else ""} \
      ~{if defined(regRegMinMarkers) then ("-reg_min_markers " +  '"' + regRegMinMarkers + '"') else ""} \
      ~{if defined(regRegMinQ) then ("-reg_min_q " +  '"' + regRegMinQ + '"') else ""} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}