version 1.0

task Swalignpy {
  command <<<
    swalign_py
  >>>
  output {
    File out_stdout = stdout()
  }
}