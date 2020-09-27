version 1.0

task DriveEditdesc {
  command <<<
    drive edit_desc
  >>>
  output {
    File out_stdout = stdout()
  }
}