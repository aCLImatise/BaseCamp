version 1.0

task SketchyFeatureDrop {
  input {
    File indexIndex
    File outputOutput
    String columnsColumns
  }
  command <<<
    sketchy feature drop \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""}
  >>>
}