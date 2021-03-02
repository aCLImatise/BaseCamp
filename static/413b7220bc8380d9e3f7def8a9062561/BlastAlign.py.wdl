version 1.0

task BlastAlignpy {
  command <<<
    BlastAlign_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}