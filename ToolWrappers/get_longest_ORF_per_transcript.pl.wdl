version 1.0

task GetLongestORFPerTranscriptpl {
  command <<<
    get_longest_ORF_per_transcript_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}