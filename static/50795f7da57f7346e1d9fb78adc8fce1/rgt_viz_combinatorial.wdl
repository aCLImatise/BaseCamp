version 1.0

task RgtVizCombinatorial {
  input {
    String oO
    Boolean rR
    Boolean qQ
    Boolean tT
    String gG
    String cC
    String organismOrganism
    String bgBg
    String mM
    String tcTc
    String exEx
    Boolean logLog
    Boolean colorColor
    Boolean vennVenn
    Boolean showShow
    String sSTest
    Boolean pwPw
    Boolean phPh
  }
  command <<<
    rgt-viz combinatorial \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(organismOrganism) then ("-organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(bgBg) then ("-bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tcTc) then ("-tc " +  '"' + tcTc + '"') else ""} \
      ~{if defined(exEx) then ("-ex " +  '"' + exEx + '"') else ""} \
      ~{true="-log" false="" logLog} \
      ~{true="-color" false="" colorColor} \
      ~{true="-venn" false="" vennVenn} \
      ~{true="-show" false="" showShow} \
      ~{if defined(sSTest) then ("-stest " +  '"' + sSTest + '"') else ""} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh}
  >>>
}