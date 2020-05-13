version 1.0

task Mdasim {
  input {
    Boolean logLog
    Boolean mutationMutationRate
    Boolean verboseVerbose
    Boolean inputInput
    Boolean outputOutput
    Boolean outputOutputFragments
    Boolean primersPrimers
    Boolean primerPrimerNo
    Boolean frgFrgLngTh
    Boolean coverageCoverage
    Boolean stepStepSize
    Boolean alphaAlpha
    Boolean attachAttachNum
    Boolean readReadLength
    Boolean singleSingle
    String? optionalOptional
    String? argsArgs
  }
  command <<<
    mdasim \
      ~{optionalOptional} \
      ~{true="--log" false="" logLog} \
      ~{true="--mutationrate" false="" mutationMutationRate} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--outputfragments" false="" outputOutputFragments} \
      ~{true="--primers" false="" primersPrimers} \
      ~{true="--primerNo" false="" primerPrimerNo} \
      ~{true="--frgLngth" false="" frgFrgLngTh} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--stepSize" false="" stepStepSize} \
      ~{true="--alpha" false="" alphaAlpha} \
      ~{true="--attachNum" false="" attachAttachNum} \
      ~{true="--readLength" false="" readReadLength} \
      ~{true="--single" false="" singleSingle} \
      ~{argsArgs}
  >>>
}