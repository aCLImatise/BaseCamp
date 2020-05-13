version 1.0

task GnosPull.pl {
  input {
    Boolean analysisAnalysis
    Boolean outdirOutdir
    Boolean configConfig
    Boolean symlinksSymlinks
    Boolean threadsThreads
    Boolean urlUrl
    Boolean infoInfo
    Boolean debugDebug
    Boolean manMan
  }
  command <<<
    gnos_pull.pl \
      ~{true="--analysis" false="" analysisAnalysis} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--config" false="" configConfig} \
      ~{true="--symlinks" false="" symlinksSymlinks} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--url" false="" urlUrl} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--man" false="" manMan}
  >>>
}