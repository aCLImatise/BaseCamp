version 1.0

task Blasrlicense {
  command <<<
    blasr_license
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}