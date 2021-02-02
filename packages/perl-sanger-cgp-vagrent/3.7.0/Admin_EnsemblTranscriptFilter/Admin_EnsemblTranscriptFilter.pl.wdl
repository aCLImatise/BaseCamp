version 1.0

task AdminEnsemblTranscriptFilterpl {
  command <<<
    Admin_EnsemblTranscriptFilter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}