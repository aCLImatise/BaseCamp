version 1.0

task Aspls {
  command <<<
    asp_ls
  >>>
  output {
    File out_stdout = stdout()
  }
}