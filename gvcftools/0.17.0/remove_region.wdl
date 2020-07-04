version 1.0

task RemoveRegion {
  input {
    String? region_file
    String? ref
  }
  command <<<
    remove_region \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    region_file: "A bed file specifying regions which should be excluded  from the gVCF. Any records contained in the excluded  region will be removed, and any boundary non-refernece  blocks will be altered to remove segments overlapping  the excluded region (required)"
    ref: "samtools reference sequence (required)"
  }
}