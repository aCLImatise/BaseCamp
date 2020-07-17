version 1.0

task ExtractTranscriptToGeneMapFromTrinity {
  input {
    String trinity_fast_a_file
    String map_file
  }
  command <<<
    extract-transcript-to-gene-map-from-trinity \
      ~{trinity_fast_a_file} \
      ~{map_file}
  >>>
  parameter_meta {
    trinity_fast_a_file: ""
    map_file: ""
  }
}