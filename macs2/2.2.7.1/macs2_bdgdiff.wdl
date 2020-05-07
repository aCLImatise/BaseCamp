version 1.0

task Macs2Bdgdiff {
  input {
    String t1T1
    String t2T2
    String c1C1
    String c2C2
    String cutCutOff
    Int minMinLen
    Int maxMaxGap
    String depthDepth1
    String depthDepth2
    String outdirOutdir
    String oOPrefix
    String oO
  }
  command <<<
    macs2 bdgdiff \
      ~{if defined(t1T1) then ("--t1 " +  '"' + t1T1 + '"') else ""} \
      ~{if defined(t2T2) then ("--t2 " +  '"' + t2T2 + '"') else ""} \
      ~{if defined(c1C1) then ("--c1 " +  '"' + c1C1 + '"') else ""} \
      ~{if defined(c2C2) then ("--c2 " +  '"' + c2C2 + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max-gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(depthDepth1) then ("--depth1 " +  '"' + depthDepth1 + '"') else ""} \
      ~{if defined(depthDepth2) then ("--depth2 " +  '"' + depthDepth2 + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(oOPrefix) then ("--o-prefix " +  '"' + oOPrefix + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}