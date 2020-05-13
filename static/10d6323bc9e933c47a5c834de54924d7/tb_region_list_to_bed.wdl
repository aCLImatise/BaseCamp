version 1.0

task TbRegionListToBed {
  input {
    String chromosomeChromosomeName
    String? outputOutputFile
  }
  command <<<
    tb_region_list_to_bed \
      ~{outputOutputFile} \
      ~{if defined(chromosomeChromosomeName) then ("--chromosome_name " +  '"' + chromosomeChromosomeName + '"') else ""}
  >>>
}