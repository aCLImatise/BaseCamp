version 1.0

task Shovill {
  input {
    Boolean checkCheck
    String r1R1
    String r2R2
    String depthDepth
    String gGSize
    String outdirOutdir
    Boolean forceForce
    String minMinLen
    String minMinCov
    String nameNameFmt
    Boolean keepKeepFiles
    String tmpdirTmpdir
    String cpusCpus
    String ramRam
    String assemblerAssembler
    String optsOpts
    String kmKmErs
    Boolean trimTrim
    Boolean noNoReadCorr
    Boolean noNoStitch
    Boolean noNoCorr
  }
  command <<<
    shovill \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(r1R1) then ("--R1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--R2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(gGSize) then ("--gsize " +  '"' + gGSize + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(nameNameFmt) then ("--namefmt " +  '"' + nameNameFmt + '"') else ""} \
      ~{true="--keepfiles" false="" keepKeepFiles} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(ramRam) then ("--ram " +  '"' + ramRam + '"') else ""} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{if defined(optsOpts) then ("--opts " +  '"' + optsOpts + '"') else ""} \
      ~{if defined(kmKmErs) then ("--kmers " +  '"' + kmKmErs + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--noreadcorr" false="" noNoReadCorr} \
      ~{true="--nostitch" false="" noNoStitch} \
      ~{true="--nocorr" false="" noNoCorr}
  >>>
}