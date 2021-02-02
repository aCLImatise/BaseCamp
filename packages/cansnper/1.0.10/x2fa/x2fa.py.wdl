version 1.0

task X2fapy {
  command <<<
    x2fa_py
  >>>
  output {
    File out_stdout = stdout()
  }
}