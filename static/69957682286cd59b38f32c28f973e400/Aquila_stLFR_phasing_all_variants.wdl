version 1.0

task AquilaStLFRPhasingAllVariants {
  input {
    String? assembly_vcf
    String? vcf_file
    String? chr_start
    String? chr_end
    String? out_dir
    String? assembly_dir
    String? block_len_use
    String use
  }
  command <<<
    Aquila_stLFR_phasing_all_variants \
      ~{use} \
      ~{if defined(assembly_vcf) then ("--assembly_vcf " +  '"' + assembly_vcf + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  parameter_meta {
    assembly_vcf: "vcf file"
    vcf_file: "vcf file"
    chr_start: "chromosome start from"
    chr_end: "chromosome end by"
    out_dir: "Directory to store output"
    assembly_dir: "folder to store assembled results"
    block_len_use: "phase block len threshold"
    use: ""
  }
}