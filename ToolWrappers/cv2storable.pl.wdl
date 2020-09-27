version 1.0

task Cv2storablepl {
  command <<<
    cv2storable_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}