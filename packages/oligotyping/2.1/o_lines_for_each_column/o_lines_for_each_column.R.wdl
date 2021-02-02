version 1.0

task OlinesforeachcolumnR {
  command <<<
    o_lines_for_each_column_R
  >>>
  output {
    File out_stdout = stdout()
  }
}