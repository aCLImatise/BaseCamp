version 1.0

task BamRead {
  input {
    String bam_file
    String output_csv
  }
  command <<<
    bam-read \
      ~{bam_file} \
      ~{output_csv}
  >>>
  parameter_meta {
    bam_file: ""
    output_csv: ""
  }
}