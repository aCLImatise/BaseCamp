version 1.0

task Deltablast {
  command <<<
    deltablast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}