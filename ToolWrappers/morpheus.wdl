version 1.0

task Morpheus {
  command <<<
    morpheus
  >>>
  output {
    File out_stdout = stdout()
  }
}