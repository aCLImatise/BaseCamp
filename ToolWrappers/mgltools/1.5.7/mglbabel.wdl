version 1.0

task Mglbabel {
  command <<<
    mglbabel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}