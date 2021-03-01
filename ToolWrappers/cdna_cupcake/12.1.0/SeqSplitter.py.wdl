version 1.0

task SeqSplitterpy {
  command <<<
    SeqSplitter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}