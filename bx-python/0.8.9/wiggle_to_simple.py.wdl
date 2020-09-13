version 1.0

task WiggleToSimplepy {
  command <<<
    wiggle_to_simple_py
  >>>
  output {
    File out_stdout = stdout()
  }
}