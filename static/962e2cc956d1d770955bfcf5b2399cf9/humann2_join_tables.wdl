version 1.0

task Humann2JoinTables {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    File fileFileName
    Boolean searchSearchSubdirectories
  }
  command <<<
    humann2_join_tables \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fileFileName) then ("--file_name " +  '"' + fileFileName + '"') else ""} \
      ~{true="--search-subdirectories" false="" searchSearchSubdirectories}
  >>>
}