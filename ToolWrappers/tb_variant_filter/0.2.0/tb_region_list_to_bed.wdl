version 1.0

task TbRegionListToBed {
  input {
    String? chromosome_name
  }
  command <<<
    tb_region_list_to_bed \
      ~{if defined(chromosome_name) then ("--chromosome_name " +  '"' + chromosome_name + '"') else ""}
  >>>
  parameter_meta {
    chromosome_name: "Chromosome name to use in BED\\n"
  }
  output {
    File out_stdout = stdout()
  }
}