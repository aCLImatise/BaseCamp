version 1.0

task RsemForEbseqGenerateNgvectorFromClusteringInfoOutputFile {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-generate-ngvector-from-clustering-info output_file \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}