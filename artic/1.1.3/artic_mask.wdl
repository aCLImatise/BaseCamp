version 1.0

task ArticMask {
  input {
    String reference
    String mask_file
    String mask_vcf
    String var_output
  }
  command <<<
    artic_mask \
      ~{reference} \
      ~{mask_file} \
      ~{mask_vcf} \
      ~{var_output}
  >>>
  parameter_meta {
    reference: ""
    mask_file: ""
    mask_vcf: ""
    var_output: ""
  }
}