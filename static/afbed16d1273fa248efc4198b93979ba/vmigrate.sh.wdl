version 1.0

task Vmigratesh {
  command <<<
    vmigrate_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}