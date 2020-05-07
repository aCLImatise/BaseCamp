version 1.0

task RsemForEbseqCalculateClusteringInfoKInputReferenceFastaFile {
  input {
    String? outputOutputFile
  }
  command <<<
    rsem-for-ebseq-calculate-clustering-info k input_reference_fasta_file \
      ~{outputOutputFile}
  >>>
}