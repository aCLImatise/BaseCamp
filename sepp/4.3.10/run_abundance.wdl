version 1.0

task RunAbundance.py {
  input {
    String alignmentAlignmentSize
    String placementPlacementSize
    String fragmentFragmentChunksize
    String distanceDistance
    String diameterDiameter
    String decompDecompStrategy
    String tempdirTempdir
    String outputOutput
    String outdirOutdir
    String configConfig
    String treeTree
    String raRaXml
    String alignmentAlignment
    String fragmentFragment
    String moleculeMolecule
    String cpuCpu
    String checkpointCheckpoint
    String intervalInterval
    String randomRandomSeed
    String alignmentAlignmentThreshold
    String placementPlacementThreshold
    String geneGene
    String blastBlastFile
    String binBinUsing
    Boolean distDist
    String cutCutOff
    String genesGenes
  }
  command <<<
    run_abundance.py \
      ~{if defined(alignmentAlignmentSize) then ("--alignmentSize " +  '"' + alignmentAlignmentSize + '"') else ""} \
      ~{if defined(placementPlacementSize) then ("--placementSize " +  '"' + placementPlacementSize + '"') else ""} \
      ~{if defined(fragmentFragmentChunksize) then ("--fragmentChunkSize " +  '"' + fragmentFragmentChunksize + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(diameterDiameter) then ("--diameter " +  '"' + diameterDiameter + '"') else ""} \
      ~{if defined(decompDecompStrategy) then ("--decomp_strategy " +  '"' + decompDecompStrategy + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(raRaXml) then ("--raxml " +  '"' + raRaXml + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(fragmentFragment) then ("--fragment " +  '"' + fragmentFragment + '"') else ""} \
      ~{if defined(moleculeMolecule) then ("--molecule " +  '"' + moleculeMolecule + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(checkpointCheckpoint) then ("--checkpoint " +  '"' + checkpointCheckpoint + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--randomseed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(alignmentAlignmentThreshold) then ("--alignmentThreshold " +  '"' + alignmentAlignmentThreshold + '"') else ""} \
      ~{if defined(placementPlacementThreshold) then ("--placementThreshold " +  '"' + placementPlacementThreshold + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(blastBlastFile) then ("--blast_file " +  '"' + blastBlastFile + '"') else ""} \
      ~{if defined(binBinUsing) then ("--bin_using " +  '"' + binBinUsing + '"') else ""} \
      ~{true="--dist" false="" distDist} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""}
  >>>
}