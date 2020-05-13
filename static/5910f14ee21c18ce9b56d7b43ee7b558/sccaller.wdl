version 1.0

task Sccaller {
  input {
    String dD
    String lL
    String biasBias
    String minMinVar
    String mapqMapq
    String minMinDepth
    String rdRd
    String nullNull
    String bulkBulk
    String bulkBulkMinDepth
    String bulkBulkMinMapq
    String bulkBulkMinVar
    String formatFormat
    String headHead
    String tailTail
    String eE
    String cpuCpuNum
    String wW
    String nN
    String tT
    String bB
    String fF
    String sS
    String oO
  }
  command <<<
    sccaller \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(biasBias) then ("--bias " +  '"' + biasBias + '"') else ""} \
      ~{if defined(minMinVar) then ("--minvar " +  '"' + minMinVar + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min_depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(rdRd) then ("--RD " +  '"' + rdRd + '"') else ""} \
      ~{if defined(nullNull) then ("--null " +  '"' + nullNull + '"') else ""} \
      ~{if defined(bulkBulk) then ("--bulk " +  '"' + bulkBulk + '"') else ""} \
      ~{if defined(bulkBulkMinDepth) then ("--bulk_min_depth " +  '"' + bulkBulkMinDepth + '"') else ""} \
      ~{if defined(bulkBulkMinMapq) then ("--bulk_min_mapq " +  '"' + bulkBulkMinMapq + '"') else ""} \
      ~{if defined(bulkBulkMinVar) then ("--bulk_min_var " +  '"' + bulkBulkMinVar + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(headHead) then ("--head " +  '"' + headHead + '"') else ""} \
      ~{if defined(tailTail) then ("--tail " +  '"' + tailTail + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cpuCpuNum) then ("--cpu_num " +  '"' + cpuCpuNum + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}