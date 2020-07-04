version 1.0

task DrDiscoBamExtract {
  input {
    String region_one
    String region_two
    String bam_input_file
  }
  command <<<
    dr-disco bam-extract \
      ~{region_one} \
      ~{region_two} \
      ~{bam_input_file}
  >>>
  parameter_meta {
    region_one: ""
    region_two: ""
    bam_input_file: ""
  }
}