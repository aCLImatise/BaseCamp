version 1.0

task LocARNARNAzpm {
  command <<<
    LocARNA_RNAz_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}