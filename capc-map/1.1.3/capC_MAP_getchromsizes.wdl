version 1.0

task CapCMAPGetchromsizes {
  input {
    String? bed_file_continaing
    String? output_file_name
  }
  command <<<
    capC-MAP getchromsizes \
      ~{if defined(bed_file_continaing) then ("-f " +  '"' + bed_file_continaing + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    bed_file_continaing: "bed file continaing list of restriction enzyme fragments for genome"
    output_file_name: "output file name (Default: chrom.sizes)"
  }
}