version 1.0

task FunannotateTest {
  input {
    Boolean testsTests
    Boolean cpusCpus
    String? argumentsArguments
  }
  command <<<
    funannotate test \
      ~{argumentsArguments} \
      ~{true="--tests" false="" testsTests} \
      ~{true="--cpus" false="" cpusCpus}
  >>>
}