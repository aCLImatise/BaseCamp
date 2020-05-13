version 1.0

task MedpyExtractContour.py {
  input {
    String widthWidth
    String dimensionDimension
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_extract_contour.py \
      ~{inputInput} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(dimensionDimension) then ("--dimension " +  '"' + dimensionDimension + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}