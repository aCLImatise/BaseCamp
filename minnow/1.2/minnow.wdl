version 1.0

task Minnow {
  input {
    Boolean aALevinMode
    Boolean splatterSplatterMode
    Boolean normalNormalMode
    Boolean testTestUniqNess
    Boolean reverseReverseUniqNess
    Boolean useUseWeibull
    String numNumOfDoublets
    String matMatDir
    String outdirOutdir
    String numNumMolfile
    Boolean genGenCode
    String refRefFile
    String g2tG2t
    String rRSpd
    String bfhBfh
    String geneGeneProb
    String countCountProb
    Boolean velocityVelocity
    Boolean binaryBinary
    Boolean dbgDbg
    Boolean noNoDump
    String gfaGfa
    String dupDupCounts
    Boolean useUseWhitelist
    Boolean generateGenerateNoisyCells
    Boolean polyaPolya
    String polyaPolyaSite
    String polyPolyAFraction
    String sampleSampleCells
    Int intronIntronFile
    String genomeGenome
    String numberNumberOfCells
    String numberNumberOfTranscripts
    String clustersClusters
    String pcrPcr
    String pcrmodel6Pcrmodel6
    String errorErrorRate
    String numNumThreads
    String eqEqClassDir
    String outdirOutdir
    String g2tG2t
    String bfhBfh
    String clusterCluster
  }
  command <<<
    minnow \
      ~{true="--alevin-mode" false="" aALevinMode} \
      ~{true="--splatter-mode" false="" splatterSplatterMode} \
      ~{true="--normal-mode" false="" normalNormalMode} \
      ~{true="--testUniqness" false="" testTestUniqNess} \
      ~{true="--reverseUniqness" false="" reverseReverseUniqNess} \
      ~{true="--useWeibull" false="" useUseWeibull} \
      ~{if defined(numNumOfDoublets) then ("--numOfDoublets " +  '"' + numNumOfDoublets + '"') else ""} \
      ~{if defined(matMatDir) then ("--matdir " +  '"' + matMatDir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(numNumMolfile) then ("--numMolFile " +  '"' + numNumMolfile + '"') else ""} \
      ~{true="--gencode" false="" genGenCode} \
      ~{if defined(refRefFile) then ("--reffile " +  '"' + refRefFile + '"') else ""} \
      ~{if defined(g2tG2t) then ("--g2t " +  '"' + g2tG2t + '"') else ""} \
      ~{if defined(rRSpd) then ("--rspd " +  '"' + rRSpd + '"') else ""} \
      ~{if defined(bfhBfh) then ("--bfh " +  '"' + bfhBfh + '"') else ""} \
      ~{if defined(geneGeneProb) then ("--geneProb " +  '"' + geneGeneProb + '"') else ""} \
      ~{if defined(countCountProb) then ("--countProb " +  '"' + countCountProb + '"') else ""} \
      ~{true="--velocity" false="" velocityVelocity} \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--dbg" false="" dbgDbg} \
      ~{true="--noDump" false="" noNoDump} \
      ~{if defined(gfaGfa) then ("--gfa " +  '"' + gfaGfa + '"') else ""} \
      ~{if defined(dupDupCounts) then ("--dupCounts " +  '"' + dupDupCounts + '"') else ""} \
      ~{true="--useWhiteList" false="" useUseWhitelist} \
      ~{true="--generateNoisyCells" false="" generateGenerateNoisyCells} \
      ~{true="--polyA" false="" polyaPolya} \
      ~{if defined(polyaPolyaSite) then ("--polyAsite " +  '"' + polyaPolyaSite + '"') else ""} \
      ~{if defined(polyPolyAFraction) then ("--polyAfraction " +  '"' + polyPolyAFraction + '"') else ""} \
      ~{if defined(sampleSampleCells) then ("--sampleCells " +  '"' + sampleSampleCells + '"') else ""} \
      ~{if defined(intronIntronFile) then ("--intronfile " +  '"' + intronIntronFile + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(numberNumberOfCells) then ("--numberOfCells " +  '"' + numberNumberOfCells + '"') else ""} \
      ~{if defined(numberNumberOfTranscripts) then ("--numberOfTranscripts " +  '"' + numberNumberOfTranscripts + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(pcrPcr) then ("--PCR " +  '"' + pcrPcr + '"') else ""} \
      ~{if defined(pcrmodel6Pcrmodel6) then ("--PCRmodel6 " +  '"' + pcrmodel6Pcrmodel6 + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(eqEqClassDir) then ("--eqClassDir " +  '"' + eqEqClassDir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(g2tG2t) then ("--g2t " +  '"' + g2tG2t + '"') else ""} \
      ~{if defined(bfhBfh) then ("--bfh " +  '"' + bfhBfh + '"') else ""} \
      ~{if defined(clusterCluster) then ("--cluster " +  '"' + clusterCluster + '"') else ""}
  >>>
}