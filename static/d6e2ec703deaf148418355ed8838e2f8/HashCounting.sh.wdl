version 1.0

task HashCountingsh {
  command <<<
    HashCounting_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}