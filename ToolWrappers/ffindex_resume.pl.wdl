version 1.0

task FfindexResumepl {
  command <<<
    ffindex_resume_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}