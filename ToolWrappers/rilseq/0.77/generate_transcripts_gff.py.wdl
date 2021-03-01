version 1.0

task GenerateTranscriptsGffpy {
  command <<<
    generate_transcripts_gff_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}