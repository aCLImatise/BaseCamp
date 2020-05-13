version 1.0

task GtfToFastaOutFile {
  input {
    String? transcriptsTranscriptsGtf
    String? genomeGenomeFa
    String? outOutFile
  }
  command <<<
    gtf_to_fasta out_file \
      ~{transcriptsTranscriptsGtf} \
      ~{genomeGenomeFa} \
      ~{outOutFile}
  >>>
}