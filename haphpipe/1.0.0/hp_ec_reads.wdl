version 1.0

task HpEcReads {
  input {
    String fq1Fq1
    String fq2Fq2
    String fFQu
    String outdirOutdir
    String nNCpu
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_ec_reads \
      ~{if defined(fq1Fq1) then ("--fq1 " +  '"' + fq1Fq1 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(fFQu) then ("--fqU " +  '"' + fFQu + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}