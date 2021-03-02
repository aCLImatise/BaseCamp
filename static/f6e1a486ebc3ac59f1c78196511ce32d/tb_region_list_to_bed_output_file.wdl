version 1.0

task TbRegionListToBedOutputFile {
  input {
    String? chromosome_name
    String tb_region_list_to_bed
  }
  command <<<
    tb_region_list_to_bed output_file \
      ~{tb_region_list_to_bed} \
      ~{if defined(chromosome_name) then ("--chromosome_name " +  '"' + chromosome_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chromosome_name: ""
    tb_region_list_to_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}