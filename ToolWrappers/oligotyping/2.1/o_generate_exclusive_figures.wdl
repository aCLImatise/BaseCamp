version 1.0

task Ogenerateexclusivefigures {
  command <<<
    o_generate_exclusive_figures
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}