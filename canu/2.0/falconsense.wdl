version 1.0

task Falconsense {
  input {
    String sS
    String cC
    String pP
    Boolean cnsCns
    Boolean fastFastQ
    Boolean logLog
    String tT
    Boolean fF
    String rR
    String rR
    String ccCc
    Int clCl
    String oiOi
    Int olOl
    String partitionPartition
    String exportExport
    String importImport
  }
  command <<<
    falconsense \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-cns" false="" cnsCns} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-log" false="" logLog} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(ccCc) then ("-cc " +  '"' + ccCc + '"') else ""} \
      ~{if defined(clCl) then ("-cl " +  '"' + clCl + '"') else ""} \
      ~{if defined(oiOi) then ("-oi " +  '"' + oiOi + '"') else ""} \
      ~{if defined(olOl) then ("-ol " +  '"' + olOl + '"') else ""} \
      ~{if defined(partitionPartition) then ("-partition " +  '"' + partitionPartition + '"') else ""} \
      ~{if defined(exportExport) then ("-export " +  '"' + exportExport + '"') else ""} \
      ~{if defined(importImport) then ("-import " +  '"' + importImport + '"') else ""}
  >>>
}