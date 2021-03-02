version 1.0

task EMBLmyGFF3augustusexample {
  command <<<
    EMBLmyGFF3_augustus_example
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}