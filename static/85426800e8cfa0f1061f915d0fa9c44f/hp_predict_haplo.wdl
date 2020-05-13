version 1.0

task HpPredictHaplo {
  input {
    String fq1Fq1
    String fq2Fq2
    String refRefFa
    String regionRegionTxt
    String outdirOutdir
    Int minMinReadLength
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_predict_haplo \
      ~{if defined(fq1Fq1) then ("--fq1 " +  '"' + fq1Fq1 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(regionRegionTxt) then ("--region_txt " +  '"' + regionRegionTxt + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min_readlength " +  '"' + minMinReadLength + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}