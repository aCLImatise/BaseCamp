version 1.0

task EMBLmyGFF3prokkaexample {
  command <<<
    EMBLmyGFF3_prokka_example
  >>>
  output {
    File out_stdout = stdout()
  }
}