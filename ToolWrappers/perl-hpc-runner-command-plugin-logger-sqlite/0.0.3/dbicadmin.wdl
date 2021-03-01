version 1.0

task Dbicadmin {
  command <<<
    dbicadmin
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}