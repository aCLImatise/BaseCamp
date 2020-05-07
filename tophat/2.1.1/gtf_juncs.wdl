version 1.0

task GtfJuncs {
  input {
    String? transcriptsTranscriptsGtf
  }
  command <<<
    gtf_juncs \
      ~{transcriptsTranscriptsGtf}
  >>>
}