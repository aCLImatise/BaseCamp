version 1.0

task ExtractGOAssignmentsFromTrinotateXlspl {
  command <<<
    extract_GO_assignments_from_Trinotate_xls_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}