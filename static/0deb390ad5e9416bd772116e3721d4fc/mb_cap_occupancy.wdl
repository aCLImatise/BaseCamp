version 1.0

task MbCapOccupancy {
  input {
    String quantileQuantile
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    mb-cap-occupancy \
      ~{inputInputFile} \
      ~{if defined(quantileQuantile) then ("--quantile " +  '"' + quantileQuantile + '"') else ""} \
      ~{outputOutputFile}
  >>>
}