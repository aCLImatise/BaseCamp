version 1.0

task RgtVizIntersect {
  input {
    Boolean rR
    Boolean qQ
    String oO
    Boolean tT
    Boolean gG
    Boolean cC
    Boolean organismOrganism
    Boolean bgBg
    Boolean mM
    Boolean tcTc
    Boolean exEx
    Boolean logLog
    Boolean colorColor
    Boolean showShow
    Boolean sSTest
    Boolean mpMp
    Boolean pwPw
    Boolean phPh
  }
  command <<<
    rgt-viz intersect \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-bg" false="" bgBg} \
      ~{true="-m" false="" mM} \
      ~{true="-tc" false="" tcTc} \
      ~{true="-ex" false="" exEx} \
      ~{true="-log" false="" logLog} \
      ~{true="-color" false="" colorColor} \
      ~{true="-show" false="" showShow} \
      ~{true="-stest" false="" sSTest} \
      ~{true="-mp" false="" mpMp} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh}
  >>>
}