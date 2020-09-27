version 1.0

task MafRandomizepy {
  command <<<
    maf_randomize_py
  >>>
  output {
    File out_stdout = stdout()
  }
}