version 1.0

task GenomedataInfoGdarchive {
  input {
    String genome_data_info
  }
  command <<<
    genomedata-info gdarchive \
      ~{genome_data_info}
  >>>
  parameter_meta {
    genome_data_info: ""
  }
}