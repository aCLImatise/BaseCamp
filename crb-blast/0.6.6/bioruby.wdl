version 1.0

task Bioruby {
  command <<<
    bioruby
  >>>
  output {
    File out_stdout = stdout()
  }
}