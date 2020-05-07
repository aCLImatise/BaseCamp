version 1.0

task FargeneModelCreation {
  input {
    String referenceReferenceSequences
    String negativeNegativeSequences
    String outputOutput
    String modelModelName
    String fragmentFragmentLengths
    String numNumFragments
    Boolean onlyOnlySens
    Boolean onlyOnlySpec
    Boolean onlyOnlyFullLength
    Boolean onlyOnlyFragments
  }
  command <<<
    fargene_model_creation \
      ~{if defined(referenceReferenceSequences) then ("--reference-sequences " +  '"' + referenceReferenceSequences + '"') else ""} \
      ~{if defined(negativeNegativeSequences) then ("--negative-sequences " +  '"' + negativeNegativeSequences + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(modelModelName) then ("--modelname " +  '"' + modelModelName + '"') else ""} \
      ~{if defined(fragmentFragmentLengths) then ("--fragment-lengths " +  '"' + fragmentFragmentLengths + '"') else ""} \
      ~{if defined(numNumFragments) then ("--num-fragments " +  '"' + numNumFragments + '"') else ""} \
      ~{true="--only-sens" false="" onlyOnlySens} \
      ~{true="--only-spec" false="" onlyOnlySpec} \
      ~{true="--only-full-length" false="" onlyOnlyFullLength} \
      ~{true="--only-fragments" false="" onlyOnlyFragments}
  >>>
}