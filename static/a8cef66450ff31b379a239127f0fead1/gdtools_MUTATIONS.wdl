version 1.0

task GdtoolsMUTATIONS {
  input {
    String outputOutput
    String referenceReference
  }
  command <<<
    gdtools MUTATIONS \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}