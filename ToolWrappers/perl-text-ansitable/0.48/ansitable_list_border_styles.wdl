version 1.0

task Ansitablelistborderstyles {
  command <<<
    ansitable_list_border_styles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}