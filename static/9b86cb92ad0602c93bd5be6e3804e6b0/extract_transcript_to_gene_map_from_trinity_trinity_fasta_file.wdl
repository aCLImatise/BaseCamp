version 1.0

task ExtractTranscriptToGeneMapFromTrinityTrinityFastaFile {
  input {
    String? mapMapFile
  }
  command <<<
    extract-transcript-to-gene-map-from-trinity trinity_fasta_file \
      ~{mapMapFile}
  >>>
}