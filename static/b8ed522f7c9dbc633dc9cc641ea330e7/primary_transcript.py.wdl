version 1.0

task PrimaryTranscriptpy {
  command <<<
    primary_transcript_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}