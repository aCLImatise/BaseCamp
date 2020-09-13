version 1.0

task ClinvarTsv {
  command <<<
    clinvar_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}