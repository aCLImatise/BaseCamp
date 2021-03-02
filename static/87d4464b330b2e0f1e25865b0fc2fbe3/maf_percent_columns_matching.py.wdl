version 1.0

task MafPercentColumnsMatchingpy {
  command <<<
    maf_percent_columns_matching_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}