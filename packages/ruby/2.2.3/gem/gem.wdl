version 1.0

task Gem {
  command <<<
    gem
  >>>
  output {
    File out_stdout = stdout()
  }
}