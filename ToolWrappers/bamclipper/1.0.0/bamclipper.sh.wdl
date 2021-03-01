version 1.0

task Bamclippersh {
  command <<<
    bamclipper_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}