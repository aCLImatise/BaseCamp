version 1.0

task Fithic {
  input {
    Int interactionsInteractions
    String fragmentsFragments
    String outdirOutdir
    String resolutionResolution
    String biasesBiases
    String passesPasses
    String noNoOfBins
    String mappMappAbilityThRes
    String libLib
    String upperUpperBound
    String lowerLowerBound
    Boolean visualVisual
    String contactContactType
    String biasBiasLowerBound
    String biasBiasUpperBound
  }
  command <<<
    fithic \
      ~{if defined(interactionsInteractions) then ("--interactions " +  '"' + interactionsInteractions + '"') else ""} \
      ~{if defined(fragmentsFragments) then ("--fragments " +  '"' + fragmentsFragments + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(biasesBiases) then ("--biases " +  '"' + biasesBiases + '"') else ""} \
      ~{if defined(passesPasses) then ("--passes " +  '"' + passesPasses + '"') else ""} \
      ~{if defined(noNoOfBins) then ("--noOfBins " +  '"' + noNoOfBins + '"') else ""} \
      ~{if defined(mappMappAbilityThRes) then ("--mappabilityThres " +  '"' + mappMappAbilityThRes + '"') else ""} \
      ~{if defined(libLib) then ("--lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(upperUpperBound) then ("--upperbound " +  '"' + upperUpperBound + '"') else ""} \
      ~{if defined(lowerLowerBound) then ("--lowerbound " +  '"' + lowerLowerBound + '"') else ""} \
      ~{true="--visual" false="" visualVisual} \
      ~{if defined(contactContactType) then ("--contactType " +  '"' + contactContactType + '"') else ""} \
      ~{if defined(biasBiasLowerBound) then ("--biasLowerBound " +  '"' + biasBiasLowerBound + '"') else ""} \
      ~{if defined(biasBiasUpperBound) then ("--biasUpperBound " +  '"' + biasBiasUpperBound + '"') else ""}
  >>>
}