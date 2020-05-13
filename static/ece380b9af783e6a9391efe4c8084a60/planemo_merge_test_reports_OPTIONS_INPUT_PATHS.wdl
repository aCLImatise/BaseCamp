version 1.0

task PlanemoMergeTestReportsOPTIONSINPUTPATHS {
  input {
    File? fileFilePath
  }
  command <<<
    planemo merge_test_reports OPTIONS INPUT_PATHS \
      ~{fileFilePath}
  >>>
}