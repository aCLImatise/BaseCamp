version 1.0

task IRep {
  input {
    Boolean fF
    Boolean sS
    String oO
    Boolean picklePickle
    String mmMm
    Boolean sortSort
    String mM
    Boolean noNoPlot
    Boolean noNoGcCorrection
    Boolean ffFf
    String tT
  }
  command <<<
    iRep \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--pickle" false="" picklePickle} \
      ~{if defined(mmMm) then ("-mm " +  '"' + mmMm + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot} \
      ~{true="--no-gc-correction" false="" noNoGcCorrection} \
      ~{true="-ff" false="" ffFf} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}