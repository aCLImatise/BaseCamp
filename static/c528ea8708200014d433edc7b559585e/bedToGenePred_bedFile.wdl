version 1.0

task BedToGenePredBedFile {
  input {
    String? geneGenePredFile
  }
  command <<<
    bedToGenePred bedFile \
      ~{geneGenePredFile}
  >>>
}