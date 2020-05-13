version 1.0

task CircleMapRepeats {
  input {
    Boolean iI
    Boolean oO
    Boolean dirDir
    Boolean mM
    Boolean bB
    Boolean cqCq
    Boolean eE
    Boolean rR
    Boolean fF
    Boolean nN
  }
  command <<<
    Circle-Map Repeats \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-m" false="" mM} \
      ~{true="-b" false="" bB} \
      ~{true="-cq" false="" cqCq} \
      ~{true="-E" false="" eE} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN}
  >>>
}