version 1.0

task Ale2wigglepy {
  command <<<
    ale2wiggle_py
  >>>
  output {
    File out_stdout = stdout()
  }
}