version 1.0

task PostprocessPredictions {
  input {
    Int dD
    Int iI
    String covCovBal
    Int cC
    Int cC
    Boolean rR
    String stddevStddev
    String sS
    String nN
    Boolean onlyOnlyDel
    Boolean onlyOnlyIns
    Boolean vcfVcf
  }
  command <<<
    postprocess-predictions \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(covCovBal) then ("--covbal " +  '"' + covCovBal + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{if defined(stddevStddev) then ("--stddev " +  '"' + stddevStddev + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="--only-del" false="" onlyOnlyDel} \
      ~{true="--only-ins" false="" onlyOnlyIns} \
      ~{true="--vcf" false="" vcfVcf}
  >>>
}