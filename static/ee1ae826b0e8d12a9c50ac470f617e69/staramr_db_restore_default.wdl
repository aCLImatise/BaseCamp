version 1.0

task StaramrDbRestoreDefault {
  input {
    Boolean forceForce
  }
  command <<<
    staramr db restore-default \
      ~{true="--force" false="" forceForce}
  >>>
}