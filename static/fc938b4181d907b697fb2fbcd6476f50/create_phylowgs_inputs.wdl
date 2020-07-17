version 1.0

task CreatePhylowgsInputs.py {
  input {
    String? vcf_type
    String? e
    String vcf_files
  }
  command <<<
    create_phylowgs_inputs.py \
      ~{vcf_files} \
      ~{if defined(vcf_type) then ("--vcf-type " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    vcf_type: ""
    e: ""
    vcf_files: "Path to VCF file for each sample. Specified as <sample>=<VCF path>."
  }
}