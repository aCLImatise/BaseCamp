version 1.0

task Ifnamesbak {
  command <<<
    ifnames_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}