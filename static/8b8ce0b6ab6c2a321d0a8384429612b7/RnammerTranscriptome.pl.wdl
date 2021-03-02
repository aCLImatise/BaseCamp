version 1.0

task RnammerTranscriptomepl {
  command <<<
    RnammerTranscriptome_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}