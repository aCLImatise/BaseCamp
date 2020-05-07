version 1.0

task Vcf2paragraph.py {
  input {
    String referenceReferenceSequence
    Boolean verboseVerbose
    String graphGraphType
    Boolean retrieveRetrieveReferenceSequence
    Int maxMaxRefNodeLength
    String readReadLength
    String targetTargetRegion
    String insInsInfoKey
    Boolean altAltPaths
    Boolean altAltSplitting
    String recursionRecursionLimit
    String? inputInput
    String? outputOutput
  }
  command <<<
    vcf2paragraph.py \
      ~{inputInput} \
      ~{if defined(referenceReferenceSequence) then ("--reference-sequence " +  '"' + referenceReferenceSequence + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(graphGraphType) then ("--graph-type " +  '"' + graphGraphType + '"') else ""} \
      ~{true="--retrieve-reference-sequence" false="" retrieveRetrieveReferenceSequence} \
      ~{if defined(maxMaxRefNodeLength) then ("--max-ref-node-length " +  '"' + maxMaxRefNodeLength + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(targetTargetRegion) then ("--target-region " +  '"' + targetTargetRegion + '"') else ""} \
      ~{if defined(insInsInfoKey) then ("--ins-info-key " +  '"' + insInsInfoKey + '"') else ""} \
      ~{true="--alt-paths" false="" altAltPaths} \
      ~{true="--alt-splitting" false="" altAltSplitting} \
      ~{if defined(recursionRecursionLimit) then ("--recursion-limit " +  '"' + recursionRecursionLimit + '"') else ""} \
      ~{outputOutput}
  >>>
}