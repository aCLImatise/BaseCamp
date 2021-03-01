version 1.0

task Ansitablelistcolorthemes {
  command <<<
    ansitable_list_color_themes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}