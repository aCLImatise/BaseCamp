version 1.0

task PickUniquePolish {
  command <<<
    pickUniquePolish
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}