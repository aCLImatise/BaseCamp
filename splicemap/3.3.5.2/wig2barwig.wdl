version 1.0

task Wig2barwig {
  command <<<
    wig2barwig
  >>>
  output {
    File out_stdout = stdout()
  }
}