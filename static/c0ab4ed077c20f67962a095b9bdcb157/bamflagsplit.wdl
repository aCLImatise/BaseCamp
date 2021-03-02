version 1.0

task Bamflagsplit {
  command <<<
    bamflagsplit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}