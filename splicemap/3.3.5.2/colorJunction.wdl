version 1.0

task ColorJunction {
  command <<<
    colorJunction
  >>>
  output {
    File out_stdout = stdout()
  }
}