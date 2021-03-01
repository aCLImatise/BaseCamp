version 1.0

task RemoveRegion {
  input {
    File? region_file
    String? ref
  }
  command <<<
    remove_region \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region_file: "A bed file specifying regions which should be excluded\\nfrom the gVCF. Any records contained in the excluded\\nregion will be removed, and any boundary non-refernece\\nblocks will be altered to remove segments overlapping\\nthe excluded region (required)"
    ref: "samtools reference sequence (required)"
  }
  output {
    File out_stdout = stdout()
  }
}