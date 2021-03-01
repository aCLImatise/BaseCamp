version 1.0

task Magicblast {
  command <<<
    magicblast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}