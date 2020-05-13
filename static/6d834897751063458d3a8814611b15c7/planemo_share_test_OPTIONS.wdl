version 1.0

task PlanemoShareTestOPTIONS {
  input {
    File? fileFilePath
  }
  command <<<
    planemo share_test OPTIONS \
      ~{fileFilePath}
  >>>
}