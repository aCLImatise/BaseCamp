version 1.0

task UmiTools {
  command <<<
    umi_tools
  >>>
  output {
    File out_stdout = stdout()
  }
}