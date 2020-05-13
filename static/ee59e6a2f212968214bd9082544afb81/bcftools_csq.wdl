version 1.0

task BcftoolsCsq {
  input {
    File fastFastARef
    File gffGffAnNot
    Boolean briefBriefPredictions
    String customCustomTag
    Boolean localLocalCsq
    Int ncNcSq
    Boolean phasePhase
    String excludeExclude
    Boolean forceForce
    String includeInclude
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    String regionsRegions
    File regionsRegionsFile
    Boolean samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    Int verboseVerbose
    String? inInVcf
  }
  command <<<
    bcftools csq \
      ~{inInVcf} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{if defined(gffGffAnNot) then ("--gff-annot " +  '"' + gffGffAnNot + '"') else ""} \
      ~{true="--brief-predictions" false="" briefBriefPredictions} \
      ~{if defined(customCustomTag) then ("--custom-tag " +  '"' + customCustomTag + '"') else ""} \
      ~{true="--local-csq" false="" localLocalCsq} \
      ~{if defined(ncNcSq) then ("--ncsq " +  '"' + ncNcSq + '"') else ""} \
      ~{true="--phase" false="" phasePhase} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{true="--samples" false="" samplesSamples} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}