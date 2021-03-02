version 1.0

task CrossMappyGvcf {
  input {
    Boolean? no_comp_alleles
    File? compress
    String chain_file
    String input_do_tgv_cf
    String ref_genome_dot_fa
    String output_file
  }
  command <<<
    CrossMap_py gvcf \
      ~{chain_file} \
      ~{input_do_tgv_cf} \
      ~{ref_genome_dot_fa} \
      ~{output_file} \
      ~{if (no_comp_alleles) then "--no-comp-alleles" else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0"
  }
  parameter_meta {
    no_comp_alleles: "If set, CrossMap does NOT check if the reference allele\\nis different from the alternate allele."
    compress: "If set, compress the output gVCF file by calling the\\nsystem \\\"gzip\\\".\\n"
    chain_file: ""
    input_do_tgv_cf: ""
    ref_genome_dot_fa: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_compress = "${in_compress}"
  }
}