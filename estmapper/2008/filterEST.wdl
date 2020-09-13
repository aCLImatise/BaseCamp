version 1.0

task FilterEST {
  command <<<
    filterEST
  >>>
  output {
    File out_stdout = stdout()
  }
}