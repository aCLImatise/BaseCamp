version 1.0

task HpSampleReads {
  input {
    String fq1Fq1
    String fq2Fq2
    String fFQu
    String outdirOutdir
    String nNReads
    String fracFrac
    String seedSeed
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_sample_reads \
      ~{if defined(fq1Fq1) then ("--fq1 " +  '"' + fq1Fq1 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(fFQu) then ("--fqU " +  '"' + fFQu + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nNReads) then ("--nreads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(fracFrac) then ("--frac " +  '"' + fracFrac + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}