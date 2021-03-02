version 1.0

task AgeAlign {
  command <<<
    age_align
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}