version 1.0

task VisualizePdb.py {
  input {
    String secondarySecondaryStructure
    Boolean textText
    Boolean longLongRange
    Boolean pseudoPseudoKnots
    Boolean virtualVirtualResidues
    Boolean colorColorResidues
    Boolean loopsLoops
    String chainChain
    String distanceDistance
    String outputOutput
    String onlyOnlyElements
    Boolean virtualVirtualAtoms
  }
  command <<<
    visualize_pdb.py \
      ~{if defined(secondarySecondaryStructure) then ("--secondary-structure " +  '"' + secondarySecondaryStructure + '"') else ""} \
      ~{true="--text" false="" textText} \
      ~{true="--longrange" false="" longLongRange} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{true="--virtual-residues" false="" virtualVirtualResidues} \
      ~{true="--color-residues" false="" colorColorResidues} \
      ~{true="--loops" false="" loopsLoops} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(onlyOnlyElements) then ("--only-elements " +  '"' + onlyOnlyElements + '"') else ""} \
      ~{true="--virtual-atoms" false="" virtualVirtualAtoms}
  >>>
}