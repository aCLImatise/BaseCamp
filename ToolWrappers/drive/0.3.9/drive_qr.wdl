version 1.0

task DriveQr {
  command <<<
    drive qr
  >>>
  output {
    File out_stdout = stdout()
  }
}