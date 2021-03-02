version 1.0

task Pepxml2csvSimplepy {
  command <<<
    pepxml2csv_simple_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}