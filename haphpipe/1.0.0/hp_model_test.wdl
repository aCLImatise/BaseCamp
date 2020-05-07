version 1.0

task HpModelTest {
  input {
    String seqsSeqs
    String runRunId
    String outOutName
    String outdirOutdir
    String dataDataType
    String partitionsPartitions
    String seedSeed
    String topologyTopology
    String utreeUtree
    Boolean forceForce
    String ascAscBias
    String frequenciesFrequencies
    String hetHet
    String modelsModels
    String schemesSchemes
    String templateTemplate
    String nNCpu
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
    Boolean keepKeepTmp
  }
  command <<<
    hp_model_test \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{if defined(runRunId) then ("--run_id " +  '"' + runRunId + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(dataDataType) then ("--data_type " +  '"' + dataDataType + '"') else ""} \
      ~{if defined(partitionsPartitions) then ("--partitions " +  '"' + partitionsPartitions + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(topologyTopology) then ("--topology " +  '"' + topologyTopology + '"') else ""} \
      ~{if defined(utreeUtree) then ("--utree " +  '"' + utreeUtree + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(ascAscBias) then ("--asc_bias " +  '"' + ascAscBias + '"') else ""} \
      ~{if defined(frequenciesFrequencies) then ("--frequencies " +  '"' + frequenciesFrequencies + '"') else ""} \
      ~{if defined(hetHet) then ("--het " +  '"' + hetHet + '"') else ""} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""} \
      ~{if defined(schemesSchemes) then ("--schemes " +  '"' + schemesSchemes + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--keep_tmp" false="" keepKeepTmp}
  >>>
}