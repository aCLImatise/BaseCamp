version 1.0

task Ps2pdf14Options {
  command <<<
    ps2pdf14 options___
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}