version 1.0

task Magicblast {
  command <<<
    magicblast
  >>>
  output {
    File out_stdout = stdout()
  }
}