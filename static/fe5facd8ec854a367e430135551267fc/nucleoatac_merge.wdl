version 1.0

task NucleoatacMerge {
  input {
    String occOccPeaks
    String nucNucPos
    String outOut
    Int sepSep
    Int minMinOcc
  }
  command <<<
    nucleoatac merge \
      ~{if defined(occOccPeaks) then ("--occpeaks " +  '"' + occOccPeaks + '"') else ""} \
      ~{if defined(nucNucPos) then ("--nucpos " +  '"' + nucNucPos + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{if defined(minMinOcc) then ("--min_occ " +  '"' + minMinOcc + '"') else ""}
  >>>
}