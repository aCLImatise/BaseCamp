version 1.0

task RsemForEbseqCalculateClusteringInfoInputReferenceFastaFile {
  input {
    String? kK
    String? inputInputReferenceFastAFile
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-calculate-clustering-info input_reference_fasta_file \
      ~{kK} \
      ~{inputInputReferenceFastAFile} \
      ~{outputOutputFile}
  >>>
}