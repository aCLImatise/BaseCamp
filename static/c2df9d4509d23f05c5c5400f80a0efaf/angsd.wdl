version 1.0

task Angsd {
  input {
    Boolean nNThreads
    Boolean nNQueueSize
    Boolean howHowOften
    Boolean doDoBcf
  }
  command <<<
    angsd \
      ~{true="-nThreads" false="" nNThreads} \
      ~{true="-nQueueSize" false="" nNQueueSize} \
      ~{true="-howOften" false="" howHowOften} \
      ~{true="-doBcf" false="" doDoBcf}
  >>>
}