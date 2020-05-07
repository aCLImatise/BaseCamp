version 1.0

task DimspyGetPeaklists {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    dimspy get-peaklists \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}