version 1.0

task OboTrimmingpl {
  command <<<
    obo_trimming_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}