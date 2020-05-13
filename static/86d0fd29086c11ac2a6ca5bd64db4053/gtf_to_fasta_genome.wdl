version 1.0

task GtfToFastaGenome.fa {
  input {
    String? transcriptsTranscriptsGtf
    String? genomeGenomeFa
    String? outOutFile
  }
  command <<<
    gtf_to_fasta genome.fa \
      ~{transcriptsTranscriptsGtf} \
      ~{genomeGenomeFa} \
      ~{outOutFile}
  >>>
}