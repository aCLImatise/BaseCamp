version 1.0

task RnammerTranscriptomepl {
  command <<<
    RnammerTranscriptome_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}