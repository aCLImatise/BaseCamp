version 1.0

task VtoolsLiftover {
  input {
    Boolean flipFlip
    Boolean vV
    String? buildBuild
  }
  command <<<
    vtools liftover \
      ~{buildBuild} \
      ~{true="--flip" false="" flipFlip} \
      ~{true="-v" false="" vV}
  >>>
}