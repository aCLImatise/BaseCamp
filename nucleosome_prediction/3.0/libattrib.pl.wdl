version 1.0

task Libattribpl {
  command <<<
    libattrib_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}