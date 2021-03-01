version 1.0

task JuncDb {
  command <<<
    junc_db
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}