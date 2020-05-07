version 1.0

task RunTipp.py {
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
    String referenceReferencePkg
    String alignmentAlignmentThreshold
    Boolean distDist
    String placementPlacementThreshold
    String pushPushDown
    String taxonomyTaxonomy
    String taxonomyTaxonomyNameMapping
    String alignmentAlignmentDecompositionTree
    String cutCutOff
  }
  command <<<
    run_tipp.py \
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
      ~{if defined(referenceReferencePkg) then ("--reference_pkg " +  '"' + referenceReferencePkg + '"') else ""} \
      ~{if defined(alignmentAlignmentThreshold) then ("--alignmentThreshold " +  '"' + alignmentAlignmentThreshold + '"') else ""} \
      ~{true="--dist" false="" distDist} \
      ~{if defined(placementPlacementThreshold) then ("--placementThreshold " +  '"' + placementPlacementThreshold + '"') else ""} \
      ~{if defined(pushPushDown) then ("--push_down " +  '"' + pushPushDown + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(taxonomyTaxonomyNameMapping) then ("--taxonomyNameMapping " +  '"' + taxonomyTaxonomyNameMapping + '"') else ""} \
      ~{if defined(alignmentAlignmentDecompositionTree) then ("--alignmentDecompositionTree " +  '"' + alignmentAlignmentDecompositionTree + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""}
  >>>
}