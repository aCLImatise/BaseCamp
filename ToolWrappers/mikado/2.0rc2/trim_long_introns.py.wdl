version 1.0

task TrimLongIntronspy {
  command <<<
    trim_long_introns_py
  >>>
  output {
    File out_stdout = stdout()
  }
}