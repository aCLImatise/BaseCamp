version 1.0

task GaasRevealHiddenCharacters.pl {
  input {
    String inInFile
    String descDesc
    String outputOutput
  }
  command <<<
    gaas_reveal_hidden_characters.pl \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(descDesc) then ("--desc " +  '"' + descDesc + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}