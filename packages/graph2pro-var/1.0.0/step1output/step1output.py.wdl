version 1.0

task Step1outputpy {
  command <<<
    step1output_py
  >>>
  output {
    File out_stdout = stdout()
  }
}