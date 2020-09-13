version 1.0

task Monofindprovides {
  command <<<
    mono_find_provides
  >>>
  output {
    File out_stdout = stdout()
  }
}