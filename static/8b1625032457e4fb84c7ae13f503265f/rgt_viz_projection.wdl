version 1.0

task RgtVizProjection {
  input {
    Boolean rR
    Boolean qQ
    Boolean oO
    Boolean tT
    Boolean gG
    Boolean cC
    Boolean bgBg
    Boolean unionUnion
    Boolean organismOrganism
    Boolean logLog
    Boolean colorColor
    Boolean showShow
    Boolean tableTable
    Boolean bedBed
    Boolean pwPw
    Boolean phPh
    Boolean cfpCfp
    Boolean loadLoad
  }
  command <<<
    rgt-viz projection \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-bg" false="" bgBg} \
      ~{true="-union" false="" unionUnion} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-log" false="" logLog} \
      ~{true="-color" false="" colorColor} \
      ~{true="-show" false="" showShow} \
      ~{true="-table" false="" tableTable} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-ph" false="" phPh} \
      ~{true="-cfp" false="" cfpCfp} \
      ~{true="-load" false="" loadLoad}
  >>>
}