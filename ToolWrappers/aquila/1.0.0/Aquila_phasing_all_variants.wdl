version 1.0

task AquilaPhasingAllVariants {
  input {
    File? assembly_vcf
    File? vcf_file
    Int? sample_name
    Int? chr_start
    Int? chr_end
    Directory? out_dir
    Directory? assembly_dir
    Int? block_len_use
    Int x_zhou_one_five_atcs_dot_stanford_dot_edu
  }
  command <<<
    Aquila_phasing_all_variants \
      ~{x_zhou_one_five_atcs_dot_stanford_dot_edu} \
      ~{if defined(assembly_vcf) then ("--assembly_vcf " +  '"' + assembly_vcf + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly_vcf: "Required parameter, Aquila assembly based VCF file,\\n\\\"Aquila_final_sorted.vcf\\\", called by\\n\\\"Aquila_assembly_based_variants_call.py\\\""
    vcf_file: "Required parameter, VCF file called by FreeBayes"
    sample_name: "sample name, you can define your own,for example: L1,\\ndefault = sample_name"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    out_dir: "Directory to store output, default =\\n./Aquila_Phasing_Results"
    assembly_dir: "Required parameter, folder to store Aquila assembly\\nresults at Aquila assembly steps"
    block_len_use: "phase block len threshold, default = 100000 (100kb),\\nif you change it, make sure it's consistent with what\\nyou define at Aquila assembly steps\\n"
    x_zhou_one_five_atcs_dot_stanford_dot_edu: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}