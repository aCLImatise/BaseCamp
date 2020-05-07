version 1.0

task TrimAlignments {
  input {
    String refRefName
    String outputOutputPrefix
    String referenceReferenceFastA
    String? bamsBams
  }
  command <<<
    trim_alignments \
      ~{bamsBams} \
      ~{if defined(refRefName) then ("--ref_name " +  '"' + refRefName + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(referenceReferenceFastA) then ("--reference_fasta " +  '"' + referenceReferenceFastA + '"') else ""}
  >>>
}