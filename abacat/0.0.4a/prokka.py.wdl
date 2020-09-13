version 1.0

task Prokkapy {
  command <<<
    prokka_py
  >>>
  output {
    File out_stdout = stdout()
  }
}