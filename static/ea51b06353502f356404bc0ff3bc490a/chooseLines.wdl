version 1.0

task ChooseLines {
  input {
    String kK
    String? optionsOptions
    String? inInFile
  }
  command <<<
    chooseLines \
      ~{optionsOptions} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{inInFile}
  >>>
}