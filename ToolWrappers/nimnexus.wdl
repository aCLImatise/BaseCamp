version 1.0

task Nimnexus {
  command <<<
    nimnexus
  >>>
  output {
    File out_stdout = stdout()
  }
}