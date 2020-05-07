version 1.0

task RunUpp.py {
  input {
    String fragmentFragmentChunksize
    String distanceDistance
    String diameterDiameter
    String alignmentAlignmentSize
    String medianMedianFullLength
    String backboneBackboneThreshold
    String backboneBackboneSize
    String decompDecompStrategy
    String tempdirTempdir
    String outputOutput
    String outdirOutdir
    String moleculeMolecule
    String sequenceSequenceFile
    String configConfig
    String treeTree
    String alignmentAlignment
    String cpuCpu
    String checkpointCheckpoint
    String intervalInterval
    String randomRandomSeed
    String longbranchLongbranchFilter
    String placementPlacementSize
    String raRaXml
    String fragmentFragment
  }
  command <<<
    run_upp.py \
      ~{if defined(fragmentFragmentChunksize) then ("--fragmentChunkSize " +  '"' + fragmentFragmentChunksize + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(diameterDiameter) then ("--diameter " +  '"' + diameterDiameter + '"') else ""} \
      ~{if defined(alignmentAlignmentSize) then ("--alignmentSize " +  '"' + alignmentAlignmentSize + '"') else ""} \
      ~{if defined(medianMedianFullLength) then ("--median_full_length " +  '"' + medianMedianFullLength + '"') else ""} \
      ~{if defined(backboneBackboneThreshold) then ("--backbone_threshold " +  '"' + backboneBackboneThreshold + '"') else ""} \
      ~{if defined(backboneBackboneSize) then ("--backboneSize " +  '"' + backboneBackboneSize + '"') else ""} \
      ~{if defined(decompDecompStrategy) then ("--decomp_strategy " +  '"' + decompDecompStrategy + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(moleculeMolecule) then ("--molecule " +  '"' + moleculeMolecule + '"') else ""} \
      ~{if defined(sequenceSequenceFile) then ("--sequence_file " +  '"' + sequenceSequenceFile + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(checkpointCheckpoint) then ("--checkpoint " +  '"' + checkpointCheckpoint + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--randomseed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(longbranchLongbranchFilter) then ("--longbranchfilter " +  '"' + longbranchLongbranchFilter + '"') else ""} \
      ~{if defined(placementPlacementSize) then ("--placementSize " +  '"' + placementPlacementSize + '"') else ""} \
      ~{if defined(raRaXml) then ("--raxml " +  '"' + raRaXml + '"') else ""} \
      ~{if defined(fragmentFragment) then ("--fragment " +  '"' + fragmentFragment + '"') else ""}
  >>>
}