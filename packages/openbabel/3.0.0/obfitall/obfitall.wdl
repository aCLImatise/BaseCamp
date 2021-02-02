version 1.0

task Obfitall {
  command <<<
    obfitall
  >>>
  output {
    File out_stdout = stdout()
  }
}