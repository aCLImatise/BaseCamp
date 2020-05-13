version 1.0

task MedpyGraphcutLabelWRegional.py {
  input {
    String boundaryBoundary
    String regionalRegional
    String rRAdditional
    String alphaAlpha
    Boolean fF
    Boolean vV
    Boolean dD
    String? bBAdditional
    String? regionRegion
    String? markersMarkers
    String? outputOutput
  }
  command <<<
    medpy_graphcut_label_w_regional.py \
      ~{bBAdditional} \
      ~{if defined(boundaryBoundary) then ("--boundary " +  '"' + boundaryBoundary + '"') else ""} \
      ~{if defined(regionalRegional) then ("--regional " +  '"' + regionalRegional + '"') else ""} \
      ~{if defined(rRAdditional) then ("--radditional " +  '"' + rRAdditional + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{regionRegion} \
      ~{markersMarkers} \
      ~{outputOutput}
  >>>
}