version 1.0

task Packmol {
  command <<<
    packmol
  >>>
  output {
    File out_stdout = stdout()
  }
}