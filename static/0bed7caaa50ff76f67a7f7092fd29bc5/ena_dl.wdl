version 1.0

task EnaDl {
  input {
    String asperaAspera
    String asperaAsperaKey
    String asperaAsperaSpeed
    Boolean isIsStudy
    Boolean isIsExperiment
    Boolean isIsRun
    Boolean groupGroupByExperiment
    Boolean groupGroupBySample
    String outdirOutdir
    Int maxMaxRetry
    Boolean ftpFtpOnly
    Boolean silentSilent
    Boolean debugDebug
    String? accessionAccession
  }
  command <<<
    ena-dl \
      ~{accessionAccession} \
      ~{if defined(asperaAspera) then ("--aspera " +  '"' + asperaAspera + '"') else ""} \
      ~{if defined(asperaAsperaKey) then ("--aspera_key " +  '"' + asperaAsperaKey + '"') else ""} \
      ~{if defined(asperaAsperaSpeed) then ("--aspera_speed " +  '"' + asperaAsperaSpeed + '"') else ""} \
      ~{true="--is_study" false="" isIsStudy} \
      ~{true="--is_experiment" false="" isIsExperiment} \
      ~{true="--is_run" false="" isIsRun} \
      ~{true="--group_by_experiment" false="" groupGroupByExperiment} \
      ~{true="--group_by_sample" false="" groupGroupBySample} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(maxMaxRetry) then ("--max_retry " +  '"' + maxMaxRetry + '"') else ""} \
      ~{true="--ftp_only" false="" ftpFtpOnly} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--debug" false="" debugDebug}
  >>>
}