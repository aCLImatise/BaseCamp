version 1.0

task CapCmain {
  input {
    Boolean? fragfile_bed_file
    Boolean? targfile_bed_file
    Boolean? samfile_sam_file
    Boolean? name_first_part
    String? exclusion_zone_reporter
    Boolean? save_interchromosomal_present
  }
  command <<<
    capCmain \
      ~{true="-r" false="" fragfile_bed_file} \
      ~{true="-t" false="" targfile_bed_file} \
      ~{true="-s" false="" samfile_sam_file} \
      ~{true="-o" false="" name_first_part} \
      ~{if defined(exclusion_zone_reporter) then ("-e " +  '"' + exclusion_zone_reporter + '"') else ""} \
      ~{true="-i" false="" save_interchromosomal_present}
  >>>
  parameter_meta {
    fragfile_bed_file: "frag_file   is a bed file of restriction enzyme fragments genome wide"
    targfile_bed_file: "targ_file   is a bed file of capture targets"
    samfile_sam_file: "sam_file    is a SAM file containing groups of aligned digested fragments, sorted by name"
    name_first_part: "name        is the first part of the output file name"
    exclusion_zone_reporter: "exclusion zone; reporter fragments mapping within N bp of a target fragment are discarder. Default N=500."
    save_interchromosomal_present: "save interchromosomal. If present, interchomosomal interactions will be saved as well as counted."
  }
}