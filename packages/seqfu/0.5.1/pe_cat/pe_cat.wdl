version 1.0

task Pecat {
  command <<<
    pe_cat
  >>>
  output {
    File out_stdout = stdout()
  }
}