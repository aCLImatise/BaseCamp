version 1.0

task BedparseFilter {
  input {
    String annotationAnnotation
    String columnColumn
    Boolean inverseInverse
    String? bedBedFile
  }
  command <<<
    bedparse filter \
      ~{bedBedFile} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{true="--inverse" false="" inverseInverse}
  >>>
}