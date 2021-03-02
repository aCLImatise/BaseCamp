version 1.0

task PrimaryTranscriptpy {
  command <<<
    primary_transcript_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/orthofinder:2.5.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}