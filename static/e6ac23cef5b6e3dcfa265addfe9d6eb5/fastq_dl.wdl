version 1.0

task FastqDl {
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
    String prefixPrefix
    Int maxMaxAttempts
    Int cpusCpus
    Boolean ftpFtpOnly
    Boolean sraSraOnly
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    fastq-dl \
      ~{if defined(asperaAspera) then ("--aspera " +  '"' + asperaAspera + '"') else ""} \
      ~{if defined(asperaAsperaKey) then ("--aspera_key " +  '"' + asperaAsperaKey + '"') else ""} \
      ~{if defined(asperaAsperaSpeed) then ("--aspera_speed " +  '"' + asperaAsperaSpeed + '"') else ""} \
      ~{true="--is_study" false="" isIsStudy} \
      ~{true="--is_experiment" false="" isIsExperiment} \
      ~{true="--is_run" false="" isIsRun} \
      ~{true="--group_by_experiment" false="" groupGroupByExperiment} \
      ~{true="--group_by_sample" false="" groupGroupBySample} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(maxMaxAttempts) then ("--max_attempts " +  '"' + maxMaxAttempts + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--ftp_only" false="" ftpFtpOnly} \
      ~{true="--sra_only" false="" sraSraOnly} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}