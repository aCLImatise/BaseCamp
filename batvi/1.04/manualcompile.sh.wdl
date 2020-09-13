version 1.0

task Manualcompilesh {
  command <<<
    manualcompile_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}