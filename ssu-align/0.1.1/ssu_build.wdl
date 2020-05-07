version 1.0

task SsuBuild {
  input {
    Boolean dD
    Boolean fF
    String oO
    String nN
    String appendAppend
    String keyKeyOut
    String truncTrunc
    Boolean numNum
    Boolean iI
    Boolean rfRf
    String gapGapThresh
    String ps2pdfPs2pdf
    Boolean psPsOnly
    Boolean eEEnt
    String ereEre
    String? stockholmStockholmAlignmentFileToBuildCmFrom
  }
  command <<<
    ssu-build \
      ~{stockholmStockholmAlignmentFileToBuildCmFrom} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(appendAppend) then ("--append " +  '"' + appendAppend + '"') else ""} \
      ~{if defined(keyKeyOut) then ("--key-out " +  '"' + keyKeyOut + '"') else ""} \
      ~{if defined(truncTrunc) then ("--trunc " +  '"' + truncTrunc + '"') else ""} \
      ~{true="--num" false="" numNum} \
      ~{true="-i" false="" iI} \
      ~{true="--rf" false="" rfRf} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(ps2pdfPs2pdf) then ("--ps2pdf " +  '"' + ps2pdfPs2pdf + '"') else ""} \
      ~{true="--ps-only" false="" psPsOnly} \
      ~{true="--eent" false="" eEEnt} \
      ~{if defined(ereEre) then ("--ere " +  '"' + ereEre + '"') else ""}
  >>>
}