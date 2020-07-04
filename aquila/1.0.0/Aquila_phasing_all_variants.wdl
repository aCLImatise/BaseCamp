version 1.0

task AquilaPhasingAllVariants {
  input {
    String? assembly_vcf
    String? vcf_file
    String? sample_name
    String? chr_start
    String? chr_end
    String? out_dir
    String? assembly_dir
    String? block_len_use
    String use
  }
  command <<<
    Aquila_phasing_all_variants \
      ~{use} \
      ~{if defined(assembly_vcf) then ("--assembly_vcf " +  '"' + assembly_vcf + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  parameter_meta {
    assembly_vcf: "Required parameter, Aquila assembly based VCF file, \"Aquila_final_sorted.vcf\", called by \"Aquila_assembly_based_variants_call.py\""
    vcf_file: "Required parameter, VCF file called by FreeBayes"
    sample_name: "sample name, you can define your own,for example: L1, default = sample_name"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    out_dir: "Directory to store output, default = ./Aquila_Phasing_Results"
    assembly_dir: "Required parameter, folder to store Aquila assembly results at Aquila assembly steps"
    block_len_use: "phase block len threshold, default = 100000 (100kb), if you change it, make sure it's consistent with what you define at Aquila assembly steps"
    use: ""
  }
}