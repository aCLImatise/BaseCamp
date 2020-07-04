version 1.0

task NovoutilRename {
  input {
    String assembly_report_dot_txt
    String assembly_regions_dot_txt
    String bed_slash_vcf_file
  }
  command <<<
    novoutil rename \
      ~{assembly_report_dot_txt} \
      ~{assembly_regions_dot_txt} \
      ~{bed_slash_vcf_file}
  >>>
  parameter_meta {
    assembly_report_dot_txt: ""
    assembly_regions_dot_txt: ""
    bed_slash_vcf_file: ""
  }
}