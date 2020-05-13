version 1.0

task PlanemoMergeTestReportsOPTIONSFILEPATH {
  input {
    String? inputInputPaths
    File? fileFilePath
  }
  command <<<
    planemo merge_test_reports OPTIONS FILE_PATH \
      ~{inputInputPaths} \
      ~{fileFilePath}
  >>>
}