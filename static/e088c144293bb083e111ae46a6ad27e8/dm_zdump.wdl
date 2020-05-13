version 1.0

task DmZdump {
  input {
    Boolean vV
    Boolean cC
  }
  command <<<
    dm_zdump \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC}
  >>>
}