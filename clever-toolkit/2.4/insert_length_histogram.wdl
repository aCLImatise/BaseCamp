version 1.0

task Insertlengthhistogram {
  command <<<
    insert_length_histogram
  >>>
  output {
    File out_stdout = stdout()
  }
}