version 1.0

task CombineKinship {
  input {
    Boolean outOut
    Boolean pcPcA
    Boolean threadThread
  }
  command <<<
    combineKinship \
      ~{true="--out" false="" outOut} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--thread" false="" threadThread}
  >>>
}