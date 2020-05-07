version 1.0

task GtfToFastaTranscripts.gtfOutFile {
  input {
    String? genomeGenomeFa
    String? outOutFile
  }
  command <<<
    gtf_to_fasta transcripts.gtf out_file \
      ~{genomeGenomeFa} \
      ~{outOutFile}
  >>>
}