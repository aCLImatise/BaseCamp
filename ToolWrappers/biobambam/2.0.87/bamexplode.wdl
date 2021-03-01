version 1.0

task Bamexplode {
  command <<<
    bamexplode
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}