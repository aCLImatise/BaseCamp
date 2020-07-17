version 1.0

task FilterCNV {
  input {
    String cnv_region_file
    String read_count_file
    String chrom_name
  }
  command <<<
    filterCNV \
      ~{cnv_region_file} \
      ~{read_count_file} \
      ~{chrom_name}
  >>>
  parameter_meta {
    cnv_region_file: ""
    read_count_file: ""
    chrom_name: ""
  }
}