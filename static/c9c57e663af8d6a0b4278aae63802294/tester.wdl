version 1.0

task Tester {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean noisyNoisy
    Boolean recursiveRecursive
    String testdirTestdir
    String funcFuncPrefix
    String modModPrefix
    String outputOutput
    Boolean subprocessSubprocess
    Boolean noNoReport
    Boolean exitExitOnFail
  }
  command <<<
    tester \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--noisy" false="" noisyNoisy} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(testdirTestdir) then ("--testdir " +  '"' + testdirTestdir + '"') else ""} \
      ~{if defined(funcFuncPrefix) then ("--funcPrefix " +  '"' + funcFuncPrefix + '"') else ""} \
      ~{if defined(modModPrefix) then ("--modPrefix " +  '"' + modModPrefix + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--subprocess" false="" subprocessSubprocess} \
      ~{true="--noreport" false="" noNoReport} \
      ~{true="--exitOnFail" false="" exitExitOnFail}
  >>>
}