version 1.0

task TOBIASScoreBed {
  input {
    Boolean bedBed
    Boolean bigwigsBigwigs
    Boolean outputOutput
    Boolean subsetSubset
    Boolean nullNull
    Boolean positionPosition
    Boolean mathMath
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS ScoreBed \
      ~{true="--bed" false="" bedBed} \
      ~{true="--bigwigs" false="" bigwigsBigwigs} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--subset" false="" subsetSubset} \
      ~{true="--null" false="" nullNull} \
      ~{true="--position" false="" positionPosition} \
      ~{true="--math" false="" mathMath} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}