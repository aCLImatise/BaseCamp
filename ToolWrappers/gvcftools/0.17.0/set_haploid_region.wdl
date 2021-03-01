version 1.0

task SetHaploidRegion {
  input {
    File? region_file
    String? ref
  }
  command <<<
    set_haploid_region \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region_file: "A bed file specifying the regions to be converted\\n(required)"
    ref: "samtools reference sequence (required)"
  }
  output {
    File out_stdout = stdout()
  }
}