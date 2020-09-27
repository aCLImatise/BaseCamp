version 1.0

task SeqSplitterpy {
  command <<<
    SeqSplitter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}