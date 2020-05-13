version 1.0

task KinshipDecompose {
  input {
    Boolean inIn
    Boolean outOut
  }
  command <<<
    kinshipDecompose \
      ~{true="--in" false="" inIn} \
      ~{true="--out" false="" outOut}
  >>>
}