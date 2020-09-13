version 1.0

task JuncDb {
  command <<<
    junc_db
  >>>
  output {
    File out_stdout = stdout()
  }
}