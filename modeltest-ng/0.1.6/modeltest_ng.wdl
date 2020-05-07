version 1.0

task ModeltestNg {
  input {
    String datatypeDatatype
    String inputInput
    String outputOutput
    String processesProcesses
    String partitionsPartitions
    String rngRngSeed
    String topologyTopology
    String utreeUtree
    Boolean forceForce
    Boolean disableDisableCheckpoint
    String ascAscBias
    Boolean frequenciesFrequencies
    String modelsModels
    Boolean schemesSchemes
    Boolean templateTemplate
    String epsEps
    String toToL
    Boolean smoothSmoothFrequencies
    Boolean gammaGammaRates
    Boolean disableDisableCheckpoint
    Boolean noNoCompress
    Boolean keepKeepParams
    Boolean verboseVerbose
    String? ntNt
    String? aaAa
    String? mlMl
    String? mpMp
    String? fixedFixedMlJc
    String? fixedFixedMlGtr
    String? fixedFixedMp
    String? randomRandom
    String? userUser
    String? lewisLewis
    String? felsensteinFelsenstein
    String? stamStamATakis
  }
  command <<<
    modeltest-ng \
      ~{ntNt} \
      ~{lewisLewis} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(partitionsPartitions) then ("--partitions " +  '"' + partitionsPartitions + '"') else ""} \
      ~{if defined(rngRngSeed) then ("--rngseed " +  '"' + rngRngSeed + '"') else ""} \
      ~{if defined(topologyTopology) then ("--topology " +  '"' + topologyTopology + '"') else ""} \
      ~{if defined(utreeUtree) then ("--utree " +  '"' + utreeUtree + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--disable-checkpoint" false="" disableDisableCheckpoint} \
      ~{if defined(ascAscBias) then ("--asc-bias " +  '"' + ascAscBias + '"') else ""} \
      ~{true="--frequencies" false="" frequenciesFrequencies} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""} \
      ~{true="--schemes" false="" schemesSchemes} \
      ~{true="--template" false="" templateTemplate} \
      ~{if defined(epsEps) then ("--eps " +  '"' + epsEps + '"') else ""} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{true="--smooth-frequencies" false="" smoothSmoothFrequencies} \
      ~{true="--gamma-rates" false="" gammaGammaRates} \
      ~{true="--disable-checkpoint" false="" disableDisableCheckpoint} \
      ~{true="--no-compress" false="" noNoCompress} \
      ~{true="--keep-params" false="" keepKeepParams} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{aaAa} \
      ~{felsensteinFelsenstein} \
      ~{mlMl} \
      ~{stamStamATakis} \
      ~{mpMp} \
      ~{fixedFixedMlJc} \
      ~{fixedFixedMlGtr} \
      ~{fixedFixedMp} \
      ~{randomRandom} \
      ~{userUser}
  >>>
}