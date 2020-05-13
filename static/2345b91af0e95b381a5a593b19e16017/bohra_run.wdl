version 1.0

task BohraRun {
  input {
    String inputInputFile
    String jobJobId
    String referenceReference
    String maskMask
    String krakenKrakenDb
    String pipelinePipeline
    String assemblerAssembler
    String cpusCpus
    Int minalMinalN
    Int minMinCov
    String prefillPrefillPath
    Boolean mduMdu
    String workdirWorkdir
    String resourcesResources
    Boolean forceForce
    Boolean dryDryRun
    Boolean clusterCluster
    String jsonJson
    String queueQueue
    Boolean gubbinsGubbins
    String keepKeep
  }
  command <<<
    bohra run \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(jobJobId) then ("--job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(krakenKrakenDb) then ("--kraken_db " +  '"' + krakenKrakenDb + '"') else ""} \
      ~{if defined(pipelinePipeline) then ("--pipeline " +  '"' + pipelinePipeline + '"') else ""} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(minalMinalN) then ("--minaln " +  '"' + minalMinalN + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(prefillPrefillPath) then ("--prefillpath " +  '"' + prefillPrefillPath + '"') else ""} \
      ~{true="-mdu" false="" mduMdu} \
      ~{if defined(workdirWorkdir) then ("-workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(resourcesResources) then ("-resources " +  '"' + resourcesResources + '"') else ""} \
      ~{true="-force" false="" forceForce} \
      ~{true="-dry-run" false="" dryDryRun} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{true="--gubbins" false="" gubbinsGubbins} \
      ~{if defined(keepKeep) then ("--keep " +  '"' + keepKeep + '"') else ""}
  >>>
}