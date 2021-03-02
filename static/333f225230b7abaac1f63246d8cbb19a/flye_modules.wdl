version 1.0

task Flyemodules {
  command <<<
    flye_modules
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}