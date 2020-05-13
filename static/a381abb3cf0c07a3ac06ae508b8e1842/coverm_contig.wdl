version 1.0

task CovermContig {
  input {
    String referenceReference
    String singleSingle
  }
  command <<<
    coverm contig \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(singleSingle) then ("--single " +  '"' + singleSingle + '"') else ""}
  >>>
}