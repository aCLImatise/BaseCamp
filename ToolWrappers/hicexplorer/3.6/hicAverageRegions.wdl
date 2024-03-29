version 1.0

task HicAverageRegions {
  input {
    String? range
    String? range_in_bins
    String? matrix
    File? regions
    File? out_filename
    String? coordinates_tobin_mapping
  }
  command <<<
    hicAverageRegions \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(range_in_bins) then ("--rangeInBins " +  '"' + range_in_bins + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(coordinates_tobin_mapping) then ("--coordinatesToBinMapping " +  '"' + coordinates_tobin_mapping + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    range: "RANGE, -ra RANGE RANGE\\nRange of region up- and downstream of each region to\\ninclude in genomic units."
    range_in_bins: "RANGEINBINS, -rib RANGEINBINS RANGEINBINS\\nRange of region up- and downstream of each region to\\ninclude in bin units."
    matrix: "The matrix to use for the average of TAD regions."
    regions: "BED file which stores a list of regions that are\\nsummed and averaged"
    out_filename: "File name to save the average regions TADs matrix."
    coordinates_tobin_mapping: "If the region contains start and end coordinates,\\ndefine if the start, center (start + (end-start) / 2)\\nor end bin should be used as start for range.This\\nparameter is only important to set if the given start\\nand end coordinates are not in the same bin (Default:\\nstart)."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}