version 1.0

task Snippy {
  input {
    Boolean citationCitation
    Boolean checkCheck
    Boolean forceForce
    Boolean quietQuiet
    String cpusCpus
    String ramRam
    String tmpdirTmpdir
    String referenceReference
    String r1R1
    String r2R2
    String seSe
    String ctgCtgS
    String peilPeil
    String bamBam
    String targetsTargets
    String subsampleSubsample
    String outdirOutdir
    String prefixPrefix
    Boolean reportReport
    Boolean cleanupCleanup
    String rgRgId
    Boolean unmappedUnmapped
    String mapMapQual
    String baseBaseQual
    String minMinCov
    String minMinFrac
    String minMinQual
    String maxMaxSoft
    String bwaBwaOpt
    String fbFbOpt
  }
  command <<<
    snippy \
      ~{true="--citation" false="" citationCitation} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(ramRam) then ("--ram " +  '"' + ramRam + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(r1R1) then ("--R1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--R2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(seSe) then ("--se " +  '"' + seSe + '"') else ""} \
      ~{if defined(ctgCtgS) then ("--ctgs " +  '"' + ctgCtgS + '"') else ""} \
      ~{if defined(peilPeil) then ("--peil " +  '"' + peilPeil + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--report" false="" reportReport} \
      ~{true="--cleanup" false="" cleanupCleanup} \
      ~{if defined(rgRgId) then ("--rgid " +  '"' + rgRgId + '"') else ""} \
      ~{true="--unmapped" false="" unmappedUnmapped} \
      ~{if defined(mapMapQual) then ("--mapqual " +  '"' + mapMapQual + '"') else ""} \
      ~{if defined(baseBaseQual) then ("--basequal " +  '"' + baseBaseQual + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinFrac) then ("--minfrac " +  '"' + minMinFrac + '"') else ""} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(maxMaxSoft) then ("--maxsoft " +  '"' + maxMaxSoft + '"') else ""} \
      ~{if defined(bwaBwaOpt) then ("--bwaopt " +  '"' + bwaBwaOpt + '"') else ""} \
      ~{if defined(fbFbOpt) then ("--fbopt " +  '"' + fbFbOpt + '"') else ""}
  >>>
}