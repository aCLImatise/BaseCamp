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
  runtime {
    docker: "None"
  }
  parameter_meta {
    cnv_region_file: ""
    read_count_file: ""
    chrom_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}