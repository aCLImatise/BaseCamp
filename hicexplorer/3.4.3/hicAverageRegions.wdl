version 1.0

task HicAverageRegions {
  input {
    String? matrix
    String? regions
    String? out_filename
    String? coordinates_tobin_mapping
  }
  command <<<
    hicAverageRegions \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(coordinates_tobin_mapping) then ("--coordinatesToBinMapping " +  '"' + coordinates_tobin_mapping + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The matrix to use for the average of TAD regions."
    regions: "BED file which stores a list of regions that are summed and averaged"
    out_filename: "File name to save the average regions TADs matrix."
    coordinates_tobin_mapping: "If the region contains start and end coordinates, define if the start, center (start + (end-start) / 2) or end bin should be used as start for range.This parameter is only important to set if the given start and end coordinates are not in the same bin."
  }
}