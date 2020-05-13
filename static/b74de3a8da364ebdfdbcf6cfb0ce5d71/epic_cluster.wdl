version 1.0

task EpicCluster {
  input {
    String matrixMatrix
    String outfileOutfile
    String bedBedFile
    String bigwigBigwig
    String genomeGenome
    String trunkTrunkDiff
    String binBinSize
    String distanceDistanceAllowed
    String numberNumberCores
  }
  command <<<
    epic-cluster \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(bedBedFile) then ("--bedfile " +  '"' + bedBedFile + '"') else ""} \
      ~{if defined(bigwigBigwig) then ("--bigwig " +  '"' + bigwigBigwig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(trunkTrunkDiff) then ("--trunk-diff " +  '"' + trunkTrunkDiff + '"') else ""} \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{if defined(distanceDistanceAllowed) then ("--distance-allowed " +  '"' + distanceDistanceAllowed + '"') else ""} \
      ~{if defined(numberNumberCores) then ("--number-cores " +  '"' + numberNumberCores + '"') else ""}
  >>>
}