version 1.0

task SplicedAlignmentpm {
  command <<<
    SplicedAlignment_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}