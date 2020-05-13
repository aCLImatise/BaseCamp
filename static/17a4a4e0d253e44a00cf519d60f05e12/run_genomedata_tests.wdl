version 1.0

task RunGenomedataTests.py {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean localsLocals
    Boolean failFailFast
    Boolean catchCatch
    Boolean bufferBuffer
    String kK
    String? testsTests
  }
  command <<<
    run_genomedata_tests.py \
      ~{testsTests} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--locals" false="" localsLocals} \
      ~{true="--failfast" false="" failFailFast} \
      ~{true="--catch" false="" catchCatch} \
      ~{true="--buffer" false="" bufferBuffer} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}