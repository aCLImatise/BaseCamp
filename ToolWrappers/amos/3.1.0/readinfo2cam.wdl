version 1.0

task Readinfo2cam {
  input {
    File contig_info_file
    File? repeat_coord_file
  }
  command <<<
    readinfo2cam \
      ~{contig_info_file} \
      ~{repeat_coord_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_info_file: ""
    repeat_coord_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}