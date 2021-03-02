version 1.0

task AmpliconContingencyTablepy {
  command <<<
    amplicon_contingency_table_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}