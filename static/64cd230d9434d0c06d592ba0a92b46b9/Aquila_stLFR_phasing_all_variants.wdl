version 1.0

task AquilaStLFRPhasingAllVariants {
  input {
    File? assembly_vcf
    File? vcf_file
    String? chr_start
    String? chr_end
    Directory? out_dir
    Directory? assembly_dir
    String? block_len_use
    Int x_zhou_one_five_atcs_dot_stanford_dot_edu
  }
  command <<<
    Aquila_stLFR_phasing_all_variants \
      ~{x_zhou_one_five_atcs_dot_stanford_dot_edu} \
      ~{if defined(assembly_vcf) then ("--assembly_vcf " +  '"' + assembly_vcf + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
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
    assembly_vcf: "vcf file"
    vcf_file: "vcf file"
    chr_start: "chromosome start from"
    chr_end: "chromosome end by"
    out_dir: "Directory to store output"
    assembly_dir: "folder to store assembled results"
    block_len_use: "phase block len threshold\\n"
    x_zhou_one_five_atcs_dot_stanford_dot_edu: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}