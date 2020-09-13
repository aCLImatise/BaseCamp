version 1.0

task Chunkifypy {
  command <<<
    chunkify_py
  >>>
  output {
    File out_stdout = stdout()
  }
}