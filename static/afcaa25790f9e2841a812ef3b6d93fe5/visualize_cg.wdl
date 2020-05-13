version 1.0

task VisualizeCg.py {
  input {
    String highlightHighlight
    String outputOutput
    Boolean longLongRange
    Boolean loopsLoops
    Boolean conesCones
    Boolean textText
    Boolean alignAlign
    Boolean encompassingEncompassingStems
    Boolean virtualVirtualAtoms
    String distanceDistance
    String residueResidueDistance
    Boolean basisBasis
    String stemStemColor
    String multiMultiLoopColor
    Boolean batchBatch
    Boolean sideSideChainAtoms
    Boolean rainbowRainbow
    String onlyOnlyElements
    String colorColorGradual
  }
  command <<<
    visualize_cg.py \
      ~{if defined(highlightHighlight) then ("--highlight " +  '"' + highlightHighlight + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--longrange" false="" longLongRange} \
      ~{true="--loops" false="" loopsLoops} \
      ~{true="--cones" false="" conesCones} \
      ~{true="--text" false="" textText} \
      ~{true="--align" false="" alignAlign} \
      ~{true="--encompassing-stems" false="" encompassingEncompassingStems} \
      ~{true="--virtual-atoms" false="" virtualVirtualAtoms} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(residueResidueDistance) then ("--residue-distance " +  '"' + residueResidueDistance + '"') else ""} \
      ~{true="--basis" false="" basisBasis} \
      ~{if defined(stemStemColor) then ("--stem-color " +  '"' + stemStemColor + '"') else ""} \
      ~{if defined(multiMultiLoopColor) then ("--multiloop-color " +  '"' + multiMultiLoopColor + '"') else ""} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--sidechain-atoms" false="" sideSideChainAtoms} \
      ~{true="--rainbow" false="" rainbowRainbow} \
      ~{if defined(onlyOnlyElements) then ("--only-elements " +  '"' + onlyOnlyElements + '"') else ""} \
      ~{if defined(colorColorGradual) then ("--color-gradual " +  '"' + colorColorGradual + '"') else ""}
  >>>
}