version 1.0

task AdminEnsemblTranscriptFilterpl {
  command <<<
    Admin_EnsemblTranscriptFilter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}