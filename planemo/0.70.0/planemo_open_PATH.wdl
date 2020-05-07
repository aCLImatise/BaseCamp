version 1.0

task PlanemoOpenPATH {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    planemo open PATH \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}