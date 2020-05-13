version 1.0

task PipitsRetrainRdp {
  input {
    String jJ
    String fF
    String tT
    String oO
    String? reReTrains
    String? rdpRdp
    String? classifierClassifier
  }
  command <<<
    pipits_retrain_rdp \
      ~{reReTrains} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{rdpRdp} \
      ~{classifierClassifier}
  >>>
}