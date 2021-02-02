version 1.0

task PickUniquePolish {
  command <<<
    pickUniquePolish
  >>>
  output {
    File out_stdout = stdout()
  }
}