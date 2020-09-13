version 1.0

task Bam2chicagosh {
  input {
    String bam_file
    File bait_map_file
    File digest_r_map_file
    String sample_name
    String? no_delete
  }
  command <<<
    bam2chicago_sh \
      ~{bam_file} \
      ~{bait_map_file} \
      ~{digest_r_map_file} \
      ~{sample_name} \
      ~{no_delete}
  >>>
  parameter_meta {
    bam_file: ""
    bait_map_file: ""
    digest_r_map_file: ""
    sample_name: ""
    no_delete: ""
  }
  output {
    File out_stdout = stdout()
  }
}