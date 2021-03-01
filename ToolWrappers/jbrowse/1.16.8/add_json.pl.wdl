version 1.0

task Addjsonpl {
  command <<<
    add_json_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}