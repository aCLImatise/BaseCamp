version 1.0

task TypeVariantspy {
  input {
    String? fast_a_in
    File? variants_config
    File? reference
    File? variants_out
    File? append_genotypes
  }
  command <<<
    type_variants_py \
      ~{if defined(fast_a_in) then ("--fasta-in " +  '"' + fast_a_in + '"') else ""} \
      ~{if defined(variants_config) then ("--variants-config " +  '"' + variants_config + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(variants_out) then ("--variants-out " +  '"' + variants_out + '"') else ""} \
      ~{if (append_genotypes) then "--append-genotypes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.5--py_0"
  }
  parameter_meta {
    fast_a_in: "alignment to type, in fasta format"
    variants_config: "config file containing variants to type. Format is like:\\nsnp:T6954C\\ndel:11288:9\\naa:orf1ab:T1001I\\nsnp and del positions are 1-based nucleotide position relative to the alignment\\naa position is 1-based codon position relative to the cds\\nNo header line or comment lines are permitted"
    reference: "Wuhan-Hu-1 in fasta format (for typing the reference allele at deletions and sanity checking the config file)"
    variants_out: "csv file to write"
    append_genotypes: "if invoked, write the genotype for each variant in the config file to the output"
  }
  output {
    File out_stdout = stdout()
    File out_append_genotypes = "${in_append_genotypes}"
  }
}