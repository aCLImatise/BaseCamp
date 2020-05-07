version 1.0

task DefineClones.py {
  input {
    Array[String]+ dD
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    String formatFormat
    String nprocNproc
    String sfSf
    String vfVf
    String jfJf
    Array[String]+ gfGf
    String modeMode
    String actAct
    String modelModel
    String distDist
    String normNorm
    String symSym
    String linkLink
    Int maxMaxMiss
    String? cloneClonePass
    String? cloneCloneFail
  }
  command <<<
    DefineClones.py \
      ~{cloneClonePass} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(sfSf) then ("--sf " +  '"' + sfSf + '"') else ""} \
      ~{if defined(vfVf) then ("--vf " +  '"' + vfVf + '"') else ""} \
      ~{if defined(jfJf) then ("--jf " +  '"' + jfJf + '"') else ""} \
      ~{if defined(gfGf) then ("--gf " +  '"' + gfGf + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(actAct) then ("--act " +  '"' + actAct + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{if defined(normNorm) then ("--norm " +  '"' + normNorm + '"') else ""} \
      ~{if defined(symSym) then ("--sym " +  '"' + symSym + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""} \
      ~{if defined(maxMaxMiss) then ("--maxmiss " +  '"' + maxMaxMiss + '"') else ""} \
      ~{cloneCloneFail}
  >>>
}