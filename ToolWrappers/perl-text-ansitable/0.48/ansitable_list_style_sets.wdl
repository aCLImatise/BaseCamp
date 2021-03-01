version 1.0

task Ansitableliststylesets {
  command <<<
    ansitable_list_style_sets
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}