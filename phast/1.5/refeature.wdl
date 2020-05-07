version 1.0

task Refeature {
  input {
    Boolean simpleSimpleBed
    String discardsDiscards
    String? optionsOptions
    String? inInFile
  }
  command <<<
    refeature \
      ~{optionsOptions} \
      ~{true="--simplebed" false="" simpleSimpleBed} \
      ~{if defined(discardsDiscards) then ("--discards " +  '"' + discardsDiscards + '"') else ""} \
      ~{inInFile}
  >>>
}