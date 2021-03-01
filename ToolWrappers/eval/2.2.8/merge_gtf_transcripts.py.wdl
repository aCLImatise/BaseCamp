version 1.0

task MergeGtfTranscriptspy {
  command <<<
    merge_gtf_transcripts_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}