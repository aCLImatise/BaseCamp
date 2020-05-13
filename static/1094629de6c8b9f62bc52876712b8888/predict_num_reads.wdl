version 1.0

task PredictNumReads {
  input {
    Int wW
    Int qualQual
    Int cC
    Int lL
    String oO
    String nN
    String dD
    String? fastFastQ
  }
  command <<<
    predict_num_reads \
      ~{fastFastQ} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(qualQual) then ("--qual " +  '"' + qualQual + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}