version 1.0

task PrepareRefseqs.pl {
  input {
    Boolean? track_config
  }
  command <<<
    prepare-refseqs.pl \
      ~{true="--trackConfig" false="" track_config}
  >>>
  parameter_meta {
    track_config: "'{ \"glyph\": \"ProcessedTranscript\" }'"
  }
}