version 1.0

task Tirmite {
  input {
    String genomeGenome
    String hmmHmmDir
    String hmmHmmFile
    String alAlNdir
    String alnAlnFile
    String alnAlnFormat
    String pairPairBed
    String stableStableReps
    String outdirOutdir
    String prefixPrefix
    Boolean noNoPairing
    Boolean gffGffOut
    String reportReportTir
    String padPadLen
    Boolean keepKeepTemp
    Boolean verboseVerbose
    String coresCores
    Int maxMaxEval
    Int maxMaxDist
    Boolean noNoBias
    String matrixMatrix
    Int minMinCov
    String hmmHmmPress
    String nNHmmer
    String hmmbuildHmmbuild
  }
  command <<<
    tirmite \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(hmmHmmDir) then ("--hmmDir " +  '"' + hmmHmmDir + '"') else ""} \
      ~{if defined(hmmHmmFile) then ("--hmmFile " +  '"' + hmmHmmFile + '"') else ""} \
      ~{if defined(alAlNdir) then ("--alnDir " +  '"' + alAlNdir + '"') else ""} \
      ~{if defined(alnAlnFile) then ("--alnFile " +  '"' + alnAlnFile + '"') else ""} \
      ~{if defined(alnAlnFormat) then ("--alnFormat " +  '"' + alnAlnFormat + '"') else ""} \
      ~{if defined(pairPairBed) then ("--pairbed " +  '"' + pairPairBed + '"') else ""} \
      ~{if defined(stableStableReps) then ("--stableReps " +  '"' + stableStableReps + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--nopairing" false="" noNoPairing} \
      ~{true="--gffOut" false="" gffGffOut} \
      ~{if defined(reportReportTir) then ("--reportTIR " +  '"' + reportReportTir + '"') else ""} \
      ~{if defined(padPadLen) then ("--padlen " +  '"' + padPadLen + '"') else ""} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(maxMaxEval) then ("--maxeval " +  '"' + maxMaxEval + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""} \
      ~{true="--nobias" false="" noNoBias} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(hmmHmmPress) then ("--hmmpress " +  '"' + hmmHmmPress + '"') else ""} \
      ~{if defined(nNHmmer) then ("--nhmmer " +  '"' + nNHmmer + '"') else ""} \
      ~{if defined(hmmbuildHmmbuild) then ("--hmmbuild " +  '"' + hmmbuildHmmbuild + '"') else ""}
  >>>
}