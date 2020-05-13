version 1.0

task VIBRANTRun.py {
  input {
    String iI
    String fF
    Directory folderFolder
    String tT
    String lL
    String oO
    Boolean viViRome
    Boolean noNoPlot
    String dD
    String mM
  }
  command <<<
    VIBRANT_run.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(folderFolder) then ("-folder " +  '"' + folderFolder + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-virome" false="" viViRome} \
      ~{true="-no_plot" false="" noNoPlot} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}