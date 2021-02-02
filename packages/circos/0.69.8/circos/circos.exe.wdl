version 1.0

task Circosexe {
  command <<<
    circos_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}