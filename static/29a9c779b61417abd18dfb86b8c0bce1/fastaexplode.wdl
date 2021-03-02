version 1.0

task Fastaexplode {
  command <<<
    fastaexplode
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}