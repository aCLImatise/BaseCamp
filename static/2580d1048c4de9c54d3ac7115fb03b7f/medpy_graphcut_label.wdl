version 1.0

task MedpyGraphcutLabel.py {
  input {
    String boundaryBoundary
    Boolean fF
    Boolean vV
    Boolean dD
    String? bBAdditional
    String? regionRegion
    String? markersMarkers
    String? outputOutput
  }
  command <<<
    medpy_graphcut_label.py \
      ~{bBAdditional} \
      ~{if defined(boundaryBoundary) then ("--boundary " +  '"' + boundaryBoundary + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{regionRegion} \
      ~{markersMarkers} \
      ~{outputOutput}
  >>>
}