version 1.0

task RgtVizJaccard {
  input {
    String oO
    Boolean rR
    Boolean qQ
    Boolean tT
    Boolean rtRt
    String gG
    String cC
    String organismOrganism
    Boolean nNLog
    Boolean colorColor
    Boolean showShow
    Boolean tableTable
    Boolean pwPw
    Boolean phPh
  }
  command <<<
    rgt-viz jaccard \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-rt" false="" rtRt} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(organismOrganism) then ("-organism " +  '"' + organismOrganism + '"') else ""} \
      ~{true="-nlog" false="" nNLog} \
      ~{true="-color" false="" colorColor} \
      ~{true="-show" false="" showShow} \
      ~{true="-table" false="" tableTable} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh}
  >>>
}