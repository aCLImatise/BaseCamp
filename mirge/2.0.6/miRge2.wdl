version 1.0

task MiRge2.0Predict {
  input {
    Boolean sS
    String oO
    String dD
    String pbPb
    String libLib
    String spSp
    String psPs
    String prPr
    Float exEx
    String adAd
    Boolean phred64Phred64
    Boolean spikeSpikeIn
    Boolean tcfTcf
    Boolean diDi
    Int cpuCpu
    Boolean aAI
    Boolean gffGff
    Boolean trfTrf
    File wsWs
    Int minMinL
    Int maxMaxL
    Int ccCc
    Int mlMl
    Int slSl
    Int olcOlc
    Int clcClc
    String? argsArgs
  }
  command <<<
    miRge2.0 predict \
      ~{argsArgs} \
      ~{true="-s" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pbPb) then ("-pb " +  '"' + pbPb + '"') else ""} \
      ~{if defined(libLib) then ("-lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(spSp) then ("-sp " +  '"' + spSp + '"') else ""} \
      ~{if defined(psPs) then ("-ps " +  '"' + psPs + '"') else ""} \
      ~{if defined(prPr) then ("-pr " +  '"' + prPr + '"') else ""} \
      ~{if defined(exEx) then ("-ex " +  '"' + exEx + '"') else ""} \
      ~{if defined(adAd) then ("-ad " +  '"' + adAd + '"') else ""} \
      ~{true="-phred64" false="" phred64Phred64} \
      ~{true="-spikeIn" false="" spikeSpikeIn} \
      ~{true="-tcf" false="" tcfTcf} \
      ~{true="-di" false="" diDi} \
      ~{if defined(cpuCpu) then ("-cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="-ai" false="" aAI} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-trf" false="" trfTrf} \
      ~{if defined(wsWs) then ("-ws " +  '"' + wsWs + '"') else ""} \
      ~{if defined(minMinL) then ("-minl " +  '"' + minMinL + '"') else ""} \
      ~{if defined(maxMaxL) then ("-maxl " +  '"' + maxMaxL + '"') else ""} \
      ~{if defined(ccCc) then ("-cc " +  '"' + ccCc + '"') else ""} \
      ~{if defined(mlMl) then ("-ml " +  '"' + mlMl + '"') else ""} \
      ~{if defined(slSl) then ("-sl " +  '"' + slSl + '"') else ""} \
      ~{if defined(olcOlc) then ("-olc " +  '"' + olcOlc + '"') else ""} \
      ~{if defined(clcClc) then ("-clc " +  '"' + clcClc + '"') else ""}
  >>>
}