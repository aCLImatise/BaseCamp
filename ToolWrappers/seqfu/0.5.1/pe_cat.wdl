version 1.0

task Pecat {
  command <<<
    pe_cat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}