version 1.0

task CreatePhylowgsInputspy {
  input {
    String? e
    String? vcf_type
    String vcf_files
  }
  command <<<
    create_phylowgs_inputs_py \
      ~{vcf_files} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcf-type " +  '"' + vcf_type + '"') else ""}
  >>>
  parameter_meta {
    e: ""
    vcf_type: ""
    vcf_files: "Path to VCF file for each sample. Specified as\\n<sample>=<VCF path>."
  }
  output {
    File out_stdout = stdout()
  }
}