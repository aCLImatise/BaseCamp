version 1.0

task CnvHunter {
  input {
    File inIn
    File outOut
    Int nN
    Float minMinZ
    Float extExtMinZ
    Float extExtGapSpan
    Float samSamMinDepth
    Float samSamMinCorr
    Int samSamCorrRegs
    Float regRegMinCov
    Float regRegMinNCov
    Float regRegMaxCv
    String debugDebug
    String segSeg
    String parPar
    File cnpCnpFile
    File annotateAnnotate
    Int gcGcWindow
    Int gcGcExtend
    File refRef
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    CnvHunter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(minMinZ) then ("-min_z " +  '"' + minMinZ + '"') else ""} \
      ~{if defined(extExtMinZ) then ("-ext_min_z " +  '"' + extExtMinZ + '"') else ""} \
      ~{if defined(extExtGapSpan) then ("-ext_gap_span " +  '"' + extExtGapSpan + '"') else ""} \
      ~{if defined(samSamMinDepth) then ("-sam_min_depth " +  '"' + samSamMinDepth + '"') else ""} \
      ~{if defined(samSamMinCorr) then ("-sam_min_corr " +  '"' + samSamMinCorr + '"') else ""} \
      ~{if defined(samSamCorrRegs) then ("-sam_corr_regs " +  '"' + samSamCorrRegs + '"') else ""} \
      ~{if defined(regRegMinCov) then ("-reg_min_cov " +  '"' + regRegMinCov + '"') else ""} \
      ~{if defined(regRegMinNCov) then ("-reg_min_ncov " +  '"' + regRegMinNCov + '"') else ""} \
      ~{if defined(regRegMaxCv) then ("-reg_max_cv " +  '"' + regRegMaxCv + '"') else ""} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(segSeg) then ("-seg " +  '"' + segSeg + '"') else ""} \
      ~{if defined(parPar) then ("-par " +  '"' + parPar + '"') else ""} \
      ~{if defined(cnpCnpFile) then ("-cnp_file " +  '"' + cnpCnpFile + '"') else ""} \
      ~{if defined(annotateAnnotate) then ("-annotate " +  '"' + annotateAnnotate + '"') else ""} \
      ~{if defined(gcGcWindow) then ("-gc_window " +  '"' + gcGcWindow + '"') else ""} \
      ~{if defined(gcGcExtend) then ("-gc_extend " +  '"' + gcGcExtend + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}