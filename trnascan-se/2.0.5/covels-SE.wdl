version 1.0

task CovelsSE {
  input {
    Boolean cC
    String gG
    File oO
    String tT
    String wW
    File dD
    Boolean eE
    Boolean fF
    String? coveCoveLs
    String? cmCmFile
    String? seqSeqFile
  }
  command <<<
    covels-SE \
      ~{coveCoveLs} \
      ~{true="-c" false="" cC} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-E" false="" eE} \
      ~{true="-F" false="" fF} \
      ~{cmCmFile} \
      ~{seqSeqFile}
  >>>
}