version 1.0

task BlastAlignpy {
  command <<<
    BlastAlign_py
  >>>
  output {
    File out_stdout = stdout()
  }
}