version 1.0

task GdtoolsMUMMER2MASK {
  input {
    String referenceReference
    String outputOutput
    String paddingPadding
    String mergeMerge
    String minimumMinimum
  }
  command <<<
    gdtools MUMMER2MASK \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(paddingPadding) then ("--padding " +  '"' + paddingPadding + '"') else ""} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{if defined(minimumMinimum) then ("--minimum " +  '"' + minimumMinimum + '"') else ""}
  >>>
}