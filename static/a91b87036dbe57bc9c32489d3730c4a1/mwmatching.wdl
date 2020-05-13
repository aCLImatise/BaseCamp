version 1.0

task Mwmatching.py {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean failFailFast
    Boolean catchCatch
    Boolean bufferBuffer
  }
  command <<<
    mwmatching.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--failfast" false="" failFailFast} \
      ~{true="--catch" false="" catchCatch} \
      ~{true="--buffer" false="" bufferBuffer}
  >>>
}