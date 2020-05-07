version 1.0

task DimspyGetAveragePeaklist {
  input {
    String inputInput
    String outputOutput
    String nameNamePeakList
  }
  command <<<
    dimspy get-average-peaklist \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nameNamePeakList) then ("--name-peaklist " +  '"' + nameNamePeakList + '"') else ""}
  >>>
}