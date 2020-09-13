version 1.0

task Flyemodules {
  command <<<
    flye_modules
  >>>
  output {
    File out_stdout = stdout()
  }
}