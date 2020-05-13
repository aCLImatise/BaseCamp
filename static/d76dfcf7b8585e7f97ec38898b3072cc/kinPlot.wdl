version 1.0

task KinPlot.R {
  input {
    Boolean hH
    Boolean lL
    Boolean cC
    Boolean optsOpts
    Boolean iIFile
    Boolean probProbMin
    Boolean titleTitle
    Boolean secondSecondColorIndex
    Boolean sumSumStates
  }
  command <<<
    kinPlot.R \
      ~{true="-H" false="" hH} \
      ~{true="-l" false="" lL} \
      ~{true="-c" false="" cC} \
      ~{true="--opts" false="" optsOpts} \
      ~{true="--ifile" false="" iIFile} \
      ~{true="--probMin" false="" probProbMin} \
      ~{true="--title" false="" titleTitle} \
      ~{true="--second-color-index" false="" secondSecondColorIndex} \
      ~{true="--sum-states" false="" sumSumStates}
  >>>
}