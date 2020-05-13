version 1.0

task IndelHistory {
  input {
    Boolean outputOutputAlignment
    String readReadHistory
    Boolean iIANames
  }
  command <<<
    indelHistory \
      ~{true="--output-alignment" false="" outputOutputAlignment} \
      ~{if defined(readReadHistory) then ("--read-history " +  '"' + readReadHistory + '"') else ""} \
      ~{true="--ia-names" false="" iIANames}
  >>>
}