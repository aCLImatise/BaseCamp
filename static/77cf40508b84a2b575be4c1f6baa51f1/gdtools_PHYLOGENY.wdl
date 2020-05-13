version 1.0

task GdtoolsPHYLOGENY {
  input {
    Boolean verboseVerbose
    String outputOutput
    String referenceReference
    Boolean missingMissingAsAncestral
    Boolean phylogenyPhylogenyAware
  }
  command <<<
    gdtools PHYLOGENY \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--missing-as-ancestral" false="" missingMissingAsAncestral} \
      ~{true="--phylogeny-aware" false="" phylogenyPhylogenyAware}
  >>>
}