version 1.0

task FusioncatcherBuild.py {
  input {
    String outputOutput
    String organismOrganism
    String configConfig
    Boolean forceForcePaths
    String webWeb
    String ftpFtpEnsembl
    String ftpFtpEnsemblPath
    String ftpFtpUcsc
    String ftpFtpNcbi
    Boolean skipSkipBlat
    Boolean enlargeEnlargeGenes
    String threadsThreads
    String skipSkipDatabase
    String startStart
    String hashHash
    Boolean keepKeep
    String checksumsChecksums
    String? argArg
  }
  command <<<
    fusioncatcher-build.py \
      ~{argArg} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--force-paths" false="" forceForcePaths} \
      ~{if defined(webWeb) then ("--web " +  '"' + webWeb + '"') else ""} \
      ~{if defined(ftpFtpEnsembl) then ("--ftp-ensembl " +  '"' + ftpFtpEnsembl + '"') else ""} \
      ~{if defined(ftpFtpEnsemblPath) then ("--ftp-ensembl-path " +  '"' + ftpFtpEnsemblPath + '"') else ""} \
      ~{if defined(ftpFtpUcsc) then ("--ftp-ucsc " +  '"' + ftpFtpUcsc + '"') else ""} \
      ~{if defined(ftpFtpNcbi) then ("--ftp-ncbi " +  '"' + ftpFtpNcbi + '"') else ""} \
      ~{true="--skip-blat" false="" skipSkipBlat} \
      ~{true="--enlarge-genes" false="" enlargeEnlargeGenes} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(skipSkipDatabase) then ("--skip-database " +  '"' + skipSkipDatabase + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(hashHash) then ("--hash " +  '"' + hashHash + '"') else ""} \
      ~{true="--keep" false="" keepKeep} \
      ~{if defined(checksumsChecksums) then ("--checksums " +  '"' + checksumsChecksums + '"') else ""}
  >>>
}