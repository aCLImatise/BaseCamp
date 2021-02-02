version 1.0

task Mglbabel {
  command <<<
    mglbabel
  >>>
  output {
    File out_stdout = stdout()
  }
}