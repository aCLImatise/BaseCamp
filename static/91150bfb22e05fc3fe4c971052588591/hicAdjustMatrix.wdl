version 1.0

task HicAdjustMatrix {
  input {
    Array[String] chromosomes
    String? regions
    String? mask_bad_regions
    String? matrix
    String? out_filename
    String? action
  }
  command <<<
    hicAdjustMatrix \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(mask_bad_regions) then ("--maskBadRegions " +  '"' + mask_bad_regions + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""}
  >>>
  parameter_meta {
    chromosomes: "List of chromosomes to keep / remove."
    regions: "BED file which stores a list of regions to keep / remove."
    mask_bad_regions: "Bad regions are identified and masked."
    matrix: "The Hi-C matrix to adjust. HiCExplorer supports the following file formats: h5 (native HiCExplorer format) and cool."
    out_filename: "File name to save the adjusted matrix."
    action: "Keep, remove or mask the list of specified chromosomes / regions."
  }
}