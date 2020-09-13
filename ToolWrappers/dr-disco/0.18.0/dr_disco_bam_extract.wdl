version 1.0

task DrdiscoBamextract {
  input {
    Int region_one
    Int region_two
    String bam_input_file
  }
  command <<<
    dr_disco bam_extract \
      ~{region_one} \
      ~{region_two} \
      ~{bam_input_file}
  >>>
  parameter_meta {
    region_one: ""
    region_two: ""
    bam_input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}