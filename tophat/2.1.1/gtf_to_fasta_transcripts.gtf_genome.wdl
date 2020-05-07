version 1.0

task GtfToFastaTranscripts.gtfGenome.fa {
  input {
    String? outOutFile
  }
  command <<<
    gtf_to_fasta transcripts.gtf genome.fa \
      ~{outOutFile}
  >>>
}