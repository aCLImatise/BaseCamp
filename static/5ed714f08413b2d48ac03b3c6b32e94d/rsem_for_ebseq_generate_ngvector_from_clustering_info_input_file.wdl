version 1.0

task RsemForEbseqGenerateNgvectorFromClusteringInfoInputFile {
  input {
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-generate-ngvector-from-clustering-info input_file \
      ~{outputOutputFile}
  >>>
}