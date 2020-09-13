version 1.0

task Filterremappedfusion {
  command <<<
    filterremappedfusion
  >>>
  output {
    File out_stdout = stdout()
  }
}