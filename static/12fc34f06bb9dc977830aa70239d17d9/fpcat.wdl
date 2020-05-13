version 1.0

task Fpcat {
  input {
    String inIn
    Boolean mergeMerge
    File outputOutput
    String outOut
    Boolean reorderReorder
    Boolean preservePreserveOrder
    Boolean showShowProgress
    File? filenameFilename
  }
  command <<<
    fpcat \
      ~{filenameFilename} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--reorder" false="" reorderReorder} \
      ~{true="--preserve-order" false="" preservePreserveOrder} \
      ~{true="--show-progress" false="" showShowProgress}
  >>>
}