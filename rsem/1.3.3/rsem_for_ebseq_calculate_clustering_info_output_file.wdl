version 1.0

task RsemForEbseqCalculateClusteringInfoOutputFile {
  input {
    String? kK
    String? inputInputReferenceFastAFile
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-calculate-clustering-info output_file \
      ~{kK} \
      ~{inputInputReferenceFastAFile} \
      ~{outputOutputFile}
  >>>
}