version 1.0

task Cmph5toolspySummarize {
  command <<<
    cmph5tools_py summarize
  >>>
  output {
    File out_stdout = stdout()
  }
}