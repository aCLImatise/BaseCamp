version 1.0

task SketchyFeaturePrepare {
  input {
    File indexIndex
    String dropDrop
    File prefixPrefix
  }
  command <<<
    sketchy feature prepare \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(dropDrop) then ("--drop " +  '"' + dropDrop + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}