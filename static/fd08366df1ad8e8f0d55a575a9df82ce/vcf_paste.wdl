version 1.0

task VcfPaste.py {
  input {
    String? master
    Boolean? sum_quals
    String? vcf_list
  }
  command <<<
    vcf_paste.py \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{true="--sum_quals" false="" sum_quals} \
      ~{if defined(vcf_list) then ("--vcf_list " +  '"' + vcf_list + '"') else ""}
  >>>
  parameter_meta {
    master: "VCF file to set first 8 columns of variant info [first file in vcf_list]"
    sum_quals: "Sum QUAL scores of input VCFs as output QUAL score"
    vcf_list: "Line-delimited list of VCF files to paste"
  }
}