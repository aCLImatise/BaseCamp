version 1.0

task MafsInRegion {
  input {
    String outputOutput
    String keepKeepInitialGaps
  }
  command <<<
    mafsInRegion \
      ~{if defined(outputOutput) then ("- output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keepKeepInitialGaps) then ("-keepInitialGaps " +  '"' + keepKeepInitialGaps + '"') else ""}
  >>>
}