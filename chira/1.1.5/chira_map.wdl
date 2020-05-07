version 1.0

task ChiraMap.py {
  input {
    Boolean aA
    Boolean iI
    Boolean oO
    Boolean x1X1
    Boolean x2X2
    Boolean f1F1
    Boolean f2F2
    Boolean buildBuild
    Boolean pP
    Boolean sS
    Boolean l1L1
    Boolean l2L2
    Boolean s1S1
    Boolean s2S2
    Boolean coCo
  }
  command <<<
    chira_map.py \
      ~{true="-a" false="" aA} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-x1" false="" x1X1} \
      ~{true="-x2" false="" x2X2} \
      ~{true="-f1" false="" f1F1} \
      ~{true="-f2" false="" f2F2} \
      ~{true="--build" false="" buildBuild} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-l1" false="" l1L1} \
      ~{true="-l2" false="" l2L2} \
      ~{true="-s1" false="" s1S1} \
      ~{true="-s2" false="" s2S2} \
      ~{true="-co" false="" coCo}
  >>>
}