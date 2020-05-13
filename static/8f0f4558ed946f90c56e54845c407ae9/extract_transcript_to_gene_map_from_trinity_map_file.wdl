version 1.0

task ExtractTranscriptToGeneMapFromTrinityMapFile {
  input {
    String? trinityTrinityFastAFile
    String? mapMapFile
  }
  command <<<
    extract-transcript-to-gene-map-from-trinity map_file \
      ~{trinityTrinityFastAFile} \
      ~{mapMapFile}
  >>>
}