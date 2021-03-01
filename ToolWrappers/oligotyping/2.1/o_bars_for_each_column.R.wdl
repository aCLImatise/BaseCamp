version 1.0

task ObarsforeachcolumnR {
  command <<<
    o_bars_for_each_column_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}