version 1.0

task Roc {
  input {
    Boolean verboseVerbose
    String inputInputFile
    Boolean oO
    Boolean sS
    Boolean hH
    Boolean vV
    String valueValueColumn
    Boolean rR
    Boolean tT
    String tagTagColumn
    Boolean fF
    String filterFilterColumn
    Boolean nN
  }
  command <<<
    roc \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-H" false="" hH} \
      ~{true="-v" false="" vV} \
      ~{if defined(valueValueColumn) then ("--value-column " +  '"' + valueValueColumn + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{if defined(tagTagColumn) then ("--tag-column " +  '"' + tagTagColumn + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(filterFilterColumn) then ("--filter-column " +  '"' + filterFilterColumn + '"') else ""} \
      ~{true="-n" false="" nN}
  >>>
}