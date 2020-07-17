version 1.0

task GenomedataLoadData {
  input {
    String? option_dot_dot_dot
    String genome_data_file
    String track_name
  }
  command <<<
    genomedata-load-data \
      ~{option_dot_dot_dot} \
      ~{genome_data_file} \
      ~{track_name}
  >>>
  parameter_meta {
    option_dot_dot_dot: ""
    genome_data_file: ""
    track_name: ""
  }
}