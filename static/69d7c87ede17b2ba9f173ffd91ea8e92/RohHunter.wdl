version 1.0

task RohHunter {
  input {
    File inIn
    File outOut
    File annotateAnnotate
    Int varVarMinDp
    Float varVarMinQ
    String varVarAfKeys
    String varVarAfKeysVep
    Float rohRohMinQ
    Int rohRohMinMarkers
    Float rohRohMinSize
    Float extExtMarkerPerc
    Float extExtSizePerc
    Boolean incIncChrx
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    RohHunter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(annotateAnnotate) then ("-annotate " +  '"' + annotateAnnotate + '"') else ""} \
      ~{if defined(varVarMinDp) then ("-var_min_dp " +  '"' + varVarMinDp + '"') else ""} \
      ~{if defined(varVarMinQ) then ("-var_min_q " +  '"' + varVarMinQ + '"') else ""} \
      ~{if defined(varVarAfKeys) then ("-var_af_keys " +  '"' + varVarAfKeys + '"') else ""} \
      ~{if defined(varVarAfKeysVep) then ("-var_af_keys_vep " +  '"' + varVarAfKeysVep + '"') else ""} \
      ~{if defined(rohRohMinQ) then ("-roh_min_q " +  '"' + rohRohMinQ + '"') else ""} \
      ~{if defined(rohRohMinMarkers) then ("-roh_min_markers " +  '"' + rohRohMinMarkers + '"') else ""} \
      ~{if defined(rohRohMinSize) then ("-roh_min_size " +  '"' + rohRohMinSize + '"') else ""} \
      ~{if defined(extExtMarkerPerc) then ("-ext_marker_perc " +  '"' + extExtMarkerPerc + '"') else ""} \
      ~{if defined(extExtSizePerc) then ("-ext_size_perc " +  '"' + extExtSizePerc + '"') else ""} \
      ~{true="-inc_chrx" false="" incIncChrx} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}