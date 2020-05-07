version 1.0

task MerlinRegress {
  input {
    Boolean meanMean
    Boolean testTestRetest
  }
  command <<<
    merlin-regress \
      ~{true="--mean" false="" meanMean} \
      ~{true="--testRetest" false="" testTestRetest}
  >>>
}