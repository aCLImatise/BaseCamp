version 1.0

task RsemForEbseqCalculateClusteringInfoKOutputFile {
  input {
    String? inputInputReferenceFastAFile
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-calculate-clustering-info k output_file \
      ~{inputInputReferenceFastAFile} \
      ~{outputOutputFile}
  >>>
}