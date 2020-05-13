version 1.0

task AtlasPlace {
  input {
    String? sampleSample
  }
  command <<<
    atlas place \
      ~{sampleSample}
  >>>
}