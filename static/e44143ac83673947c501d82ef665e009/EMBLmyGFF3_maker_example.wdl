version 1.0

task EMBLmyGFF3makerexample {
  command <<<
    EMBLmyGFF3_maker_example
  >>>
  output {
    File out_stdout = stdout()
  }
}