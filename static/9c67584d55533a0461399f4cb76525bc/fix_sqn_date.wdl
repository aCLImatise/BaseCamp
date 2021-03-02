version 1.0

task Fixsqndate {
  command <<<
    fix_sqn_date
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}