version 1.0

task NGSDExportCnvTrack {
  input {
    File outOut
    String systemSystem
    Float minMinDp
    Float maxMaxCnVs
    Float minMinAf
    String callerCallerVersion
    File statsStats
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDExportCnvTrack \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(systemSystem) then ("-system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(minMinDp) then ("-min_dp " +  '"' + minMinDp + '"') else ""} \
      ~{if defined(maxMaxCnVs) then ("-max_cnvs " +  '"' + maxMaxCnVs + '"') else ""} \
      ~{if defined(minMinAf) then ("-min_af " +  '"' + minMinAf + '"') else ""} \
      ~{if defined(callerCallerVersion) then ("-caller_version " +  '"' + callerCallerVersion + '"') else ""} \
      ~{if defined(statsStats) then ("-stats " +  '"' + statsStats + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}