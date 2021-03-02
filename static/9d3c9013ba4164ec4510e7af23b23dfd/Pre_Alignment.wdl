version 1.0

task PreAlignment {
  command <<<
    Pre_Alignment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}