version 1.0

task HpVcfToConsensus {
  input {
    String vcfVcf
    String outdirOutdir
    String sampSampIdx
    Int minMinDp
    String majorMajor
    Int minorMinor
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
  }
  command <<<
    hp_vcf_to_consensus \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(sampSampIdx) then ("--sampidx " +  '"' + sampSampIdx + '"') else ""} \
      ~{if defined(minMinDp) then ("--min_dp " +  '"' + minMinDp + '"') else ""} \
      ~{if defined(majorMajor) then ("--major " +  '"' + majorMajor + '"') else ""} \
      ~{if defined(minorMinor) then ("--minor " +  '"' + minorMinor + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""}
  >>>
}