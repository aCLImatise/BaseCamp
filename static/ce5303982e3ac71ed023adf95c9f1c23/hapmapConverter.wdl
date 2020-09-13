version 1.0

task HapmapConverter {
  command <<<
    hapmapConverter
  >>>
  output {
    File out_stdout = stdout()
  }
}