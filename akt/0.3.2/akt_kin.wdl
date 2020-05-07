version 1.0

task AktKin {
  input {
    Boolean minkinMinkin
    Boolean freqFreqFile
    Boolean methodMethod
    Boolean afAfTag
    Boolean threadsThreads
    Boolean regionsRegionsFile
    Boolean regionsRegions
    Boolean targetsTargetsFile
    Boolean targetsTargets
    Boolean forceForce
    Boolean samplesSamples
    Boolean samplesSamplesFile
    String? inInBcf
  }
  command <<<
    akt kin \
      ~{inInBcf} \
      ~{true="--minkin" false="" minkinMinkin} \
      ~{true="--freq-file" false="" freqFreqFile} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--aftag" false="" afAfTag} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--regions-file" false="" regionsRegionsFile} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--targets-file" false="" targetsTargetsFile} \
      ~{true="--targets" false="" targetsTargets} \
      ~{true="--force" false="" forceForce} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--samples-file" false="" samplesSamplesFile}
  >>>
}