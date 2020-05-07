version 1.0

task Humann2ReduceTable {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    String functionFunction
    String sortSortBy
  }
  command <<<
    humann2_reduce_table \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(sortSortBy) then ("--sort-by " +  '"' + sortSortBy + '"') else ""}
  >>>
}