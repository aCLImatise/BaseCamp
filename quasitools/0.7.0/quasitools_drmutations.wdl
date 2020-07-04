version 1.0

task QuasitoolsDrmutations {
  input {
    String bam
    String reference
    String variants
    String bed_four_file
  }
  command <<<
    quasitools drmutations \
      ~{bam} \
      ~{reference} \
      ~{variants} \
      ~{bed_four_file}
  >>>
  parameter_meta {
    bam: ""
    reference: ""
    variants: ""
    bed_four_file: ""
  }
}