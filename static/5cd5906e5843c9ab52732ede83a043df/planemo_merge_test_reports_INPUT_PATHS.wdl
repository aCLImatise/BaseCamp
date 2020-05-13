version 1.0

task PlanemoMergeTestReportsINPUTPATHS {
  input {
    String? optionsOptions
    String? inputInputPaths
    File? fileFilePath
  }
  command <<<
    planemo merge_test_reports INPUT_PATHS \
      ~{optionsOptions} \
      ~{inputInputPaths} \
      ~{fileFilePath}
  >>>
}