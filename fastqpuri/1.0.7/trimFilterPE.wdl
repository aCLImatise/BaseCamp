version 1.0

task TrimFilterPE {
  input {
    Boolean ifIfA
    Boolean trimTrimQ
    Boolean minMinL
    Boolean trimTrimN
    Boolean globalGlobal
    Boolean trimTrimN
  }
  command <<<
    trimFilterPE \
      ~{true="--ifa" false="" ifIfA} \
      ~{true="--trimQ" false="" trimTrimQ} \
      ~{true="--minL" false="" minMinL} \
      ~{true="--trimN" false="" trimTrimN} \
      ~{true="--global" false="" globalGlobal} \
      ~{true="--trimN" false="" trimTrimN}
  >>>
}