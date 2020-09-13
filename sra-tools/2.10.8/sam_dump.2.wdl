version 1.0

task Samdump2 {
  command <<<
    sam_dump_2
  >>>
  output {
    File out_stdout = stdout()
  }
}