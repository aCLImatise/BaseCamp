version 1.0

task AktPca {
  input {
    Boolean outputOutput
    Boolean outputOutputFmt
    Boolean regionsRegionsFile
    Boolean regionsRegions
    Boolean targetsTargetsFile
    Boolean targetsTargets
    Boolean forceForce
    Boolean samplesSamplesFile
    Boolean samplesSamples
    Boolean weightWeight
    Boolean npcaNpca
    Boolean algAlg
    Boolean covCovDef
    Boolean extraExtra
    Boolean iterationsIterations
    Boolean svSvFile
    Boolean assumeAssumeHomRef
  }
  command <<<
    akt pca \
      ~{true="--output" false="" outputOutput} \
      ~{true="--outputfmt" false="" outputOutputFmt} \
      ~{true="--regions-file" false="" regionsRegionsFile} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--targets-file" false="" targetsTargetsFile} \
      ~{true="--targets" false="" targetsTargets} \
      ~{true="--force" false="" forceForce} \
      ~{true="--samples-file" false="" samplesSamplesFile} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--weight" false="" weightWeight} \
      ~{true="--npca" false="" npcaNpca} \
      ~{true="--alg" false="" algAlg} \
      ~{true="--covdef" false="" covCovDef} \
      ~{true="--extra" false="" extraExtra} \
      ~{true="--iterations" false="" iterationsIterations} \
      ~{true="--svfile" false="" svSvFile} \
      ~{true="--assume-homref" false="" assumeAssumeHomRef}
  >>>
}