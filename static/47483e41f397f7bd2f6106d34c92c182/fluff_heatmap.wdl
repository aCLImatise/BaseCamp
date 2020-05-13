version 1.0

task FluffHeatmap {
  input {
    File fF
    Boolean dD
    String oO
    String cC
    Int kK
    Boolean gG
    String mM
    String pP
    String sS
    Boolean rR
    Int eE
    Int bB
    String fF
    Boolean dD
    Boolean rR
    Boolean mM
    String sS
    String cC
    String bB
    String tT
    Boolean noNoColorbar
    Int pP
  }
  command <<<
    fluff heatmap \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{true="-m" false="" mM} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="--no-colorbar" false="" noNoColorbar} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""}
  >>>
}