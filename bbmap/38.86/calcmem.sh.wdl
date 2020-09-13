version 1.0

task Calcmemsh {
  command <<<
    calcmem_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}