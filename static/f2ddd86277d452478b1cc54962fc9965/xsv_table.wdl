version 1.0

task XsvTable {
  input {
    String widthWidth
    String padPad
    String condenseCondense
    File outputOutput
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv table \
      ~{inputInput} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(padPad) then ("--pad " +  '"' + padPad + '"') else ""} \
      ~{if defined(condenseCondense) then ("--condense " +  '"' + condenseCondense + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}