version 1.0

task OoSubprocesspy {
  command <<<
    ooSubprocess_py
  >>>
  output {
    File out_stdout = stdout()
  }
}