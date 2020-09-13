version 1.0

task Otrimuninformativecolumnsfromalignment {
  command <<<
    o_trim_uninformative_columns_from_alignment
  >>>
  output {
    File out_stdout = stdout()
  }
}