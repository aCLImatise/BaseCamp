version 1.0

task HicAdjustMatrix {
  input {
    File? regions
    Array[String] chromosomes
    String? mask_bad_regions
    File? matrix
    File? out_filename
    String? action
  }
  command <<<
    hicAdjustMatrix \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(mask_bad_regions) then ("--maskBadRegions " +  '"' + mask_bad_regions + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""}
  >>>
  parameter_meta {
    regions: "BED file which stores a list of regions to\\nkeep/remove."
    chromosomes: "List of chromosomes to keep/remove."
    mask_bad_regions: "Bad regions are identified and masked."
    matrix: "The Hi-C matrix to adjust. HiCExplorer supports the\\nfollowing file formats: h5 (native HiCExplorer format)\\nand cool."
    out_filename: "File name to save the adjusted matrix."
    action: "Keep, remove or mask the list of specified\\nchromosomes/regions. keep/remove: These options\\nkeep/remove bins of matrix by deleting them. This may\\ncause issue plotting the matrix if several parts of a\\nsingle chromosome are going to be deleted. In that\\ncase, one may consider using the mask option."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}