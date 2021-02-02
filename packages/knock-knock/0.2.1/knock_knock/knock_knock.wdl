version 1.0

task Knockknock {
  command <<<
    knock_knock
  >>>
  output {
    File out_stdout = stdout()
  }
}