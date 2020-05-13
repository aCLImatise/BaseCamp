version 1.0

task SketchyUtilsFxIndex {
  input {
    File fastFastX
    String sortSortBy
    File outputOutput
  }
  command <<<
    sketchy utils fx-index \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{if defined(sortSortBy) then ("--sort_by " +  '"' + sortSortBy + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}