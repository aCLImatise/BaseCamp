version 1.0

task Ansitablelistcolorthemes {
  command <<<
    ansitable_list_color_themes
  >>>
  output {
    File out_stdout = stdout()
  }
}