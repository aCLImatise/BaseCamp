version 1.0

task Cufflinks2gff3 {
  input {
    String? transcriptsTranscriptsGtf
  }
  command <<<
    cufflinks2gff3 \
      ~{transcriptsTranscriptsGtf}
  >>>
}