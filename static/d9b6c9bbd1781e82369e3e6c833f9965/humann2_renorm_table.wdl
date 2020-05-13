version 1.0

task Humann2RenormTable {
  input {
    String inputInput
    String unitsUnits
    String modeMode
    String specialSpecial
    Boolean updateUpdateSNames
    String outputOutput
  }
  command <<<
    humann2_renorm_table \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(unitsUnits) then ("--units " +  '"' + unitsUnits + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(specialSpecial) then ("--special " +  '"' + specialSpecial + '"') else ""} \
      ~{true="--update-snames" false="" updateUpdateSNames} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}