version 1.0

task Sailfish {
  input {
    Boolean vV
    Boolean noNoVersionCheck
  }
  command <<<
    sailfish \
      ~{true="-v" false="" vV} \
      ~{true="--no-version-check" false="" noNoVersionCheck}
  >>>
}