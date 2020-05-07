version 1.0

task HicAverageRegions {
  input {
    String matrixMatrix
    String regionsRegions
    String outOutFilename
    String coordinatesCoordinatesTobinMapping
  }
  command <<<
    hicAverageRegions \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(coordinatesCoordinatesTobinMapping) then ("--coordinatesToBinMapping " +  '"' + coordinatesCoordinatesTobinMapping + '"') else ""}
  >>>
}