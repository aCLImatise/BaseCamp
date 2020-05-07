version 1.0

task NucleosomePrediction.pl {
  input {
    Boolean rawRawBinding
    String tT
    String sS
    String cC
    String tempTemp
    String pP
    Boolean tabTab
    Boolean gxpGxp
  }
  command <<<
    nucleosome_prediction.pl \
      ~{true="-raw_binding" false="" rawRawBinding} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tempTemp) then ("-temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-tab" false="" tabTab} \
      ~{true="-gxp" false="" gxpGxp}
  >>>
}