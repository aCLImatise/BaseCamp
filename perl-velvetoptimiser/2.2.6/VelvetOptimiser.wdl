version 1.0

task VelvetOptimiser.pl {
  input {
    Boolean vV
    Boolean sS
    Boolean eE
    Boolean xX
    Boolean fF
    Boolean aA
    Boolean oO
    Boolean tT
    Boolean gG
    Boolean kK
    Boolean cC
    Boolean mM
    Boolean pP
    Boolean dD
    Boolean zZ
  }
  command <<<
    VelvetOptimiser.pl \
      ~{true="--v" false="" vV} \
      ~{true="--s" false="" sS} \
      ~{true="--e" false="" eE} \
      ~{true="--x" false="" xX} \
      ~{true="--f" false="" fF} \
      ~{true="--a" false="" aA} \
      ~{true="--o" false="" oO} \
      ~{true="--t" false="" tT} \
      ~{true="--g" false="" gG} \
      ~{true="--k" false="" kK} \
      ~{true="--c" false="" cC} \
      ~{true="--m" false="" mM} \
      ~{true="--p" false="" pP} \
      ~{true="--d" false="" dD} \
      ~{true="--z" false="" zZ}
  >>>
}