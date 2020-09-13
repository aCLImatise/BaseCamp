version 1.0

task Blasrlicense {
  command <<<
    blasr_license
  >>>
  output {
    File out_stdout = stdout()
  }
}