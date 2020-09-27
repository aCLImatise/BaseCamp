version 1.0

task Kma {
  command <<<
    kma
  >>>
  output {
    File out_stdout = stdout()
  }
}