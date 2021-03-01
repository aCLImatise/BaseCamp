version 1.0

task NibLengthpy {
  command <<<
    nib_length_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}