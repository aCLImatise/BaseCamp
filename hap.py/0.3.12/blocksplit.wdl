version 1.0

task Blocksplit {
  input {
    String inputInputFile
    Boolean oO
    Boolean rR
    Boolean tT
    Boolean lL
    Boolean lL
    Boolean mM
    Boolean wW
    Boolean bB
    Boolean vV
    Boolean fF
    String verboseVerbose
  }
  command <<<
    blocksplit \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-T" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-w" false="" wW} \
      ~{true="-b" false="" bB} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}