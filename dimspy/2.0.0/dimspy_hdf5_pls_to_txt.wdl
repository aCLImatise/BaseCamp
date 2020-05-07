version 1.0

task DimspyHdf5PlsToTxt {
  input {
    String inputInput
    String outputOutput
    String delimiterDelimiter
  }
  command <<<
    dimspy hdf5-pls-to-txt \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}