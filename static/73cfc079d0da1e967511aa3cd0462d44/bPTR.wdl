version 1.0

task BPTR {
  input {
    Boolean fF
    Boolean sS
    String mM
    String cC
    String oO
    String picklePickle
    String plotPlot
    String mmMm
    String pP
    Boolean sortSort
    String bB
    Boolean ffFf
    String tT
  }
  command <<<
    bPTR \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(picklePickle) then ("-pickle " +  '"' + picklePickle + '"') else ""} \
      ~{if defined(plotPlot) then ("-plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(mmMm) then ("-mm " +  '"' + mmMm + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-ff" false="" ffFf} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}