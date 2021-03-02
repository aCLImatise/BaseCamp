version 1.0

task OlinesforeachcolumnR {
  command <<<
    o_lines_for_each_column_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}