version 1.0

task SketchyUtilsFxSort {
  input {
    File fastFastX
    String outputOutput
  }
  command <<<
    sketchy utils fx-sort \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}