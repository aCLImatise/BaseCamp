version 1.0

task BedToGenePredGenePredFile {
  input {
    String? bedBedFile
    String? geneGenePredFile
  }
  command <<<
    bedToGenePred genePredFile \
      ~{bedBedFile} \
      ~{geneGenePredFile}
  >>>
}