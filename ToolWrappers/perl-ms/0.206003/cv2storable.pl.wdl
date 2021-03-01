version 1.0

task Cv2storablepl {
  command <<<
    cv2storable_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}