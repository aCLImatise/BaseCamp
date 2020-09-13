version 1.0

task Enasearch {
  command <<<
    enasearch
  >>>
  output {
    File out_stdout = stdout()
  }
}