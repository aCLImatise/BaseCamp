version 1.0

task Filterremappedfusion {
  command <<<
    filterremappedfusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}