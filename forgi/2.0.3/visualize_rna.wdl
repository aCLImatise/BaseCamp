version 1.0

task VisualizeRna.py {
  input {
    Boolean keepKeepLengthOneStems
    String thinThinCylinders
    Boolean virtualVirtualAtoms
    Boolean virtualVirtualResidues
    String onlyOnlyElements
    Boolean noNoLoops
    Boolean longLongRange
    String stemStemColor
    String multiMultiLoopColor
    Boolean textText
    String labelsLabels
    Boolean sideSideChainAtoms
    Boolean rainbowRainbow
    String elementElementColors
    Boolean alignAlign
    String outputOutput
    Boolean batchBatch
    Boolean pseudoPseudoKnots
    String chainsChains
    String pdbPdbSecondaryStructure
    String pdbPdbAnnotationTool
    Boolean pdbPdbAllowWwwQuery
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean qQ
    String? rnaRna
  }
  command <<<
    visualize_rna.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{if defined(thinThinCylinders) then ("--thin-cylinders " +  '"' + thinThinCylinders + '"') else ""} \
      ~{true="--virtual-atoms" false="" virtualVirtualAtoms} \
      ~{true="--virtual-residues" false="" virtualVirtualResidues} \
      ~{if defined(onlyOnlyElements) then ("--only-elements " +  '"' + onlyOnlyElements + '"') else ""} \
      ~{true="--no-loops" false="" noNoLoops} \
      ~{true="--longrange" false="" longLongRange} \
      ~{if defined(stemStemColor) then ("--stem-color " +  '"' + stemStemColor + '"') else ""} \
      ~{if defined(multiMultiLoopColor) then ("--multiloop-color " +  '"' + multiMultiLoopColor + '"') else ""} \
      ~{true="--text" false="" textText} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--sidechain-atoms" false="" sideSideChainAtoms} \
      ~{true="--rainbow" false="" rainbowRainbow} \
      ~{if defined(elementElementColors) then ("--element-colors " +  '"' + elementElementColors + '"') else ""} \
      ~{true="--align" false="" alignAlign} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{if defined(chainsChains) then ("--chains " +  '"' + chainsChains + '"') else ""} \
      ~{if defined(pdbPdbSecondaryStructure) then ("--pdb-secondary-structure " +  '"' + pdbPdbSecondaryStructure + '"') else ""} \
      ~{if defined(pdbPdbAnnotationTool) then ("--pdb-annotation-tool " +  '"' + pdbPdbAnnotationTool + '"') else ""} \
      ~{true="--pdb-allow-www-query" false="" pdbPdbAllowWwwQuery} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-q" false="" qQ}
  >>>
}