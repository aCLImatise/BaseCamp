version 1.0

task Merlinregress {
  command <<<
    merlin_regress
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}