version 1.0

task MasurcaCommonpm {
  command <<<
    MasurcaCommon_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}