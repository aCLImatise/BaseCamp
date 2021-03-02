version 1.0

task Packmol {
  command <<<
    packmol
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}