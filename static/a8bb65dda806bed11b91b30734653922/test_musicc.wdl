version 1.0

task TestMusicc.py {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean localsLocals
    Boolean failFailFast
    Boolean catchCatch
    Boolean bufferBuffer
    String? testsTests
  }
  command <<<
    test_musicc.py \
      ~{testsTests} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--locals" false="" localsLocals} \
      ~{true="--failfast" false="" failFailFast} \
      ~{true="--catch" false="" catchCatch} \
      ~{true="--buffer" false="" bufferBuffer}
  >>>
}