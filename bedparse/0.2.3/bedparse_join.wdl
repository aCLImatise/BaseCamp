version 1.0

task BedparseJoin {
  input {
    String annotationAnnotation
    String columnColumn
    String separatorSeparator
    String emptyEmpty
    Boolean noNoUnmatched
    String? bedBedFile
  }
  command <<<
    bedparse join \
      ~{bedBedFile} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(emptyEmpty) then ("--empty " +  '"' + emptyEmpty + '"') else ""} \
      ~{true="--noUnmatched" false="" noNoUnmatched}
  >>>
}