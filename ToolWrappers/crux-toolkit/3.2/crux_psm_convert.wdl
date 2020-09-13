version 1.0

task CruxPsmconvert {
  command <<<
    crux psm_convert
  >>>
  output {
    File out_stdout = stdout()
  }
}