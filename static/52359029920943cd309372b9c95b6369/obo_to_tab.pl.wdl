version 1.0

task OboToTabpl {
  command <<<
    obo_to_tab_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}