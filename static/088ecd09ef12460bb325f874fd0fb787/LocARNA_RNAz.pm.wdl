version 1.0

task LocARNARNAzpm {
  command <<<
    LocARNA_RNAz_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}