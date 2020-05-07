version 1.0

task PlanemoShareTestFILEPATH {
  input {
    String? optionsOptions
    File? fileFilePath
  }
  command <<<
    planemo share_test FILE_PATH \
      ~{optionsOptions} \
      ~{fileFilePath}
  >>>
}