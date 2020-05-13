version 1.0

task DaijinConfigure {
  input {
    Boolean jsonJson
    Boolean yamlYaml
    Boolean toToMl
    Boolean alAl
    Boolean lalLal
    Boolean asAs
    String clusterClusterConfig
    String threadsThreads
    String outOutDir
    String outOut
    String schedulerScheduler
    String exeExe
    String queueQueue
    String nameName
    String genomeGenome
    String transcriptomeTranscriptome
    Int iI
    String flankFlank
    Array[String]+ protProtDb
    Boolean useUseBlast
    Boolean useUseTransDecoder
  }
  command <<<
    daijin configure \
      ~{true="--json" false="" jsonJson} \
      ~{true="--yaml" false="" yamlYaml} \
      ~{true="--toml" false="" toToMl} \
      ~{true="-al" false="" alAl} \
      ~{true="-lal" false="" lalLal} \
      ~{true="-as" false="" asAs} \
      ~{if defined(clusterClusterConfig) then ("--cluster_config " +  '"' + clusterClusterConfig + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{if defined(exeExe) then ("--exe " +  '"' + exeExe + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(transcriptomeTranscriptome) then ("--transcriptome " +  '"' + transcriptomeTranscriptome + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(protProtDb) then ("--prot-db " +  '"' + protProtDb + '"') else ""} \
      ~{true="--use-blast" false="" useUseBlast} \
      ~{true="--use-transdecoder" false="" useUseTransDecoder}
  >>>
}