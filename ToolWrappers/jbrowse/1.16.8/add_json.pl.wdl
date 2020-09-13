version 1.0

task Addjsonpl {
  command <<<
    add_json_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}