version 1.0

task Mkfake {
  input {
    Boolean platesPlates
    Boolean runsRuns
    Boolean rowsRows
    Boolean columnsColumns
    Boolean fieldsFields
    Boolean debugDebug
  }
  command <<<
    mkfake \
      ~{true="-plates" false="" platesPlates} \
      ~{true="-runs" false="" runsRuns} \
      ~{true="-rows" false="" rowsRows} \
      ~{true="-columns" false="" columnsColumns} \
      ~{true="-fields" false="" fieldsFields} \
      ~{true="-debug" false="" debugDebug}
  >>>
}