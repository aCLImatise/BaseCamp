version 1.0

task ChromosomerAgp2mapOutputFile {
  input {
    String chromosome_r
    Int agp_two_map
    String agp_file
    String output_file
  }
  command <<<
    chromosomer agp2map output_file \
      ~{chromosome_r} \
      ~{agp_two_map} \
      ~{agp_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chromosome_r: ""
    agp_two_map: ""
    agp_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}