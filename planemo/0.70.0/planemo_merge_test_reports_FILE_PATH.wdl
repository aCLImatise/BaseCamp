version 1.0

task PlanemoMergeTestReportsFILEPATH {
  input {
    String? optionsOptions
    String? inputInputPaths
    File? fileFilePath
  }
  command <<<
    planemo merge_test_reports FILE_PATH \
      ~{optionsOptions} \
      ~{inputInputPaths} \
      ~{fileFilePath}
  >>>
}