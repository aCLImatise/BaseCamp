version 1.0

task Linkage2allegro {
  command <<<
    linkage2allegro
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}