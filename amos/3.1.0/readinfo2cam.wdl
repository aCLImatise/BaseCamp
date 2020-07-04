version 1.0

task Readinfo2cam {
  input {
    String contig_info_file
    String? repeat_coord_file
  }
  command <<<
    readinfo2cam \
      ~{contig_info_file} \
      ~{repeat_coord_file}
  >>>
  parameter_meta {
    contig_info_file: ""
    repeat_coord_file: ""
  }
}