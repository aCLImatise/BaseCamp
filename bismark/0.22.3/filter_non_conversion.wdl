version 1.0

task FilterNonConversion {
  input {
    String? bismark
    String? bam
    File? files
  }
  command <<<
    filter_non_conversion \
      ~{bismark} \
      ~{bam} \
      ~{files}
  >>>
  parameter_meta {
    bismark: ""
    bam: ""
    files: ""
  }
}