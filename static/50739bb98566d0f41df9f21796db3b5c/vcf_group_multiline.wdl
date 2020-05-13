version 1.0

task VcfGroupMultiline.py {
  input {
    String? vcfVcf
  }
  command <<<
    vcf_group_multiline.py \
      ~{vcfVcf}
  >>>
}