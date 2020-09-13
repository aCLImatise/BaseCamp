version 1.0

task CapCmain {
  input {
    Boolean? bed_file_restriction
    Boolean? targfile_bed_file
    Boolean? sam_file_containing
    File? name_first_part
    Int? exclusion_zone_reporter
    Boolean? save_interchromosomal_saved
  }
  command <<<
    capCmain \
      ~{if (bed_file_restriction) then "-r" else ""} \
      ~{if (targfile_bed_file) then "-t" else ""} \
      ~{if (sam_file_containing) then "-s" else ""} \
      ~{if (name_first_part) then "-o" else ""} \
      ~{if defined(exclusion_zone_reporter) then ("-e " +  '"' + exclusion_zone_reporter + '"') else ""} \
      ~{if (save_interchromosomal_saved) then "-i" else ""}
  >>>
  parameter_meta {
    bed_file_restriction: "frag_file   is a bed file of restriction enzyme fragments genome wide"
    targfile_bed_file: "targ_file   is a bed file of capture targets"
    sam_file_containing: "sam_file    is a SAM file containing groups of aligned\\ndigested fragments, sorted by name"
    name_first_part: "name        is the first part of the output file name"
    exclusion_zone_reporter: "exclusion zone; reporter fragments mapping within N bp of\\na target fragment are discarder. Default N=500."
    save_interchromosomal_saved: "save interchromosomal. If present, interchomosomal\\ninteractions will be saved as well as counted.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_first_part = "${in_name_first_part}"
  }
}