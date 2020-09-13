version 1.0

task Migraine {
  command <<<
    migraine
  >>>
  output {
    File out_stdout = stdout()
  }
}