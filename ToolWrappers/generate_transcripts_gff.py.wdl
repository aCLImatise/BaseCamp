version 1.0

task GenerateTranscriptsGffpy {
  command <<<
    generate_transcripts_gff_py
  >>>
  output {
    File out_stdout = stdout()
  }
}