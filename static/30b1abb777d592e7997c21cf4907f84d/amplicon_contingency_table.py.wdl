version 1.0

task AmpliconContingencyTablepy {
  command <<<
    amplicon_contingency_table_py
  >>>
  output {
    File out_stdout = stdout()
  }
}