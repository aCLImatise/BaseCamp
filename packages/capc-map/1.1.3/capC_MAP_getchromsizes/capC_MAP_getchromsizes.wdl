version 1.0

task CapCMAPGetchromsizes {
  input {
    File? bed_file_continaing
    File? output_file_name
  }
  command <<<
    capC_MAP getchromsizes \
      ~{if defined(bed_file_continaing) then ("-f " +  '"' + bed_file_continaing + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    bed_file_continaing: "bed file continaing list of restriction enzyme fragments\\nfor genome"
    output_file_name: "output file name (Default: chrom.sizes)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}