version 1.0

task MedpyGraphcutVoxel.py {
  input {
    String boundaryBoundary
    Boolean sS
    Boolean fF
    Boolean vV
    Boolean dD
    String? sigmaSigma
    String? bBAdditional
    String? markersMarkers
    String? outputOutput
  }
  command <<<
    medpy_graphcut_voxel.py \
      ~{sigmaSigma} \
      ~{if defined(boundaryBoundary) then ("--boundary " +  '"' + boundaryBoundary + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{bBAdditional} \
      ~{markersMarkers} \
      ~{outputOutput}
  >>>
}