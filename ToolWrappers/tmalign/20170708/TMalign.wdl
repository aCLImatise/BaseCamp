version 1.0

task TMalign {
  command <<<
    TMalign
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}