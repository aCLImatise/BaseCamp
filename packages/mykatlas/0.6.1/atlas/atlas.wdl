version 1.0

task Atlas {
  command <<<
    atlas
  >>>
  output {
    File out_stdout = stdout()
  }
}