version 1.0

task LocarnaRnafoldPp {
  input {
    Boolean forceForceAliFold
  }
  command <<<
    locarna_rnafold_pp \
      ~{true="--force-alifold" false="" forceForceAliFold}
  >>>
}