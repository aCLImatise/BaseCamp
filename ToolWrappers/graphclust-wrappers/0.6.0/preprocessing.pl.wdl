version 1.0

task Preprocessingpl {
  command <<<
    preprocessing_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}