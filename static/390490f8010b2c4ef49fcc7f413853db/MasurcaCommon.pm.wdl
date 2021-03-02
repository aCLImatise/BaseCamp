version 1.0

task MasurcaCommonpm {
  command <<<
    MasurcaCommon_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}