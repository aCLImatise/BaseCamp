version 1.0

task VcfPastepy {
  input {
    File? master
    Boolean? sum_quals
    String? vcf_list
  }
  command <<<
    vcf_paste_py \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{if (sum_quals) then "--sum_quals" else ""} \
      ~{if defined(vcf_list) then ("--vcf_list " +  '"' + vcf_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    master: "VCF file to set first 8 columns of variant info [first file in vcf_list]"
    sum_quals: "Sum QUAL scores of input VCFs as output QUAL score"
    vcf_list: "Line-delimited list of VCF files to paste\\n"
  }
  output {
    File out_stdout = stdout()
  }
}