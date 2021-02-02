version 1.0

task Telescope {
  command <<<
    telescope
  >>>
  output {
    File out_stdout = stdout()
  }
}