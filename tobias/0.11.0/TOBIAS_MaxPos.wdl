version 1.0

task TOBIASMaxPos {
  input {
    Boolean bedBed
    Boolean bigwigBigwig
    Boolean outputOutput
    Boolean invertInvert
  }
  command <<<
    TOBIAS MaxPos \
      ~{true="--bed" false="" bedBed} \
      ~{true="--bigwig" false="" bigwigBigwig} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--invert" false="" invertInvert}
  >>>
}