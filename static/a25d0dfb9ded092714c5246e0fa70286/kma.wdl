version 1.0

task Kma {
  command <<<
    kma
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}