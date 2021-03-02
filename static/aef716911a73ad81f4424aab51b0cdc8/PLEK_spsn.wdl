version 1.0

task PLEKSpsn {
  command <<<
    PLEK_spsn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}