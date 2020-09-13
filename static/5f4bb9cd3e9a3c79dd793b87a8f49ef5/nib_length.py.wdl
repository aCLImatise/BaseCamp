version 1.0

task NibLengthpy {
  command <<<
    nib_length_py
  >>>
  output {
    File out_stdout = stdout()
  }
}