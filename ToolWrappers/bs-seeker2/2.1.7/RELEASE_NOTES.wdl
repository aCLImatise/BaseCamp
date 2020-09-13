version 1.0

task RELEASENOTES {
  command <<<
    RELEASE_NOTES
  >>>
  output {
    File out_stdout = stdout()
  }
}