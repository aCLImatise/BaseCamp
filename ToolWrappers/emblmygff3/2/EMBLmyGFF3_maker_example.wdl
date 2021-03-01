version 1.0

task EMBLmyGFF3makerexample {
  command <<<
    EMBLmyGFF3_maker_example
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}