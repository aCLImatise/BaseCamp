version 1.0

task FunannotateUtilTest {
  input {
    Boolean testsTests
    Boolean cpusCpus
    String? testTest
    String? argumentsArguments
  }
  command <<<
    funannotate util test \
      ~{testTest} \
      ~{true="--tests" false="" testsTests} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{argumentsArguments}
  >>>
}