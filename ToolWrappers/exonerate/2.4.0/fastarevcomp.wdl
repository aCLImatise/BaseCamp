version 1.0

task Fastarevcomp {
  command <<<
    fastarevcomp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}