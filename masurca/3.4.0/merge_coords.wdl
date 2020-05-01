version 1.0

task MergeCoords {
  input {
    File outputOutput
  }
  command <<<
    merge_coords \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}