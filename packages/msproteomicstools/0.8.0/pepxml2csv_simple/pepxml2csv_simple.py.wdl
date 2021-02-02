version 1.0

task Pepxml2csvSimplepy {
  command <<<
    pepxml2csv_simple_py
  >>>
  output {
    File out_stdout = stdout()
  }
}