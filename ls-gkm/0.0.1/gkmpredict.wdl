version 1.0

task Gkmpredict {
  input {
    Boolean vV
  }
  command <<<
    gkmpredict \
      ~{true="-v" false="" vV}
  >>>
}