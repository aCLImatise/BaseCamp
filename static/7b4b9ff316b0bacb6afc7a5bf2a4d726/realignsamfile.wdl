version 1.0

task Realignsamfile {
  input {
    String elongationElongation
    String filterFilterCircularReads
    String inputInput
    String referenceReference
    String filterFilterNonCircularSequences
  }
  command <<<
    realignsamfile \
      ~{if defined(elongationElongation) then ("--elongation " +  '"' + elongationElongation + '"') else ""} \
      ~{if defined(filterFilterCircularReads) then ("--filterCircularReads " +  '"' + filterFilterCircularReads + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(filterFilterNonCircularSequences) then ("--filterNonCircularSequences " +  '"' + filterFilterNonCircularSequences + '"') else ""}
  >>>
}