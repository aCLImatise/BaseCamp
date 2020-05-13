version 1.0

task PlanemoCreateGistFILEPATH {
  input {
    String? optionsOptions
    File? fileFilePath
  }
  command <<<
    planemo create_gist FILE_PATH \
      ~{optionsOptions} \
      ~{fileFilePath}
  >>>
}