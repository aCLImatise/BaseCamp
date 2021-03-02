version 1.0

task MegalodonExtrasVariantsAtomize {
  input {
    File? out_vcf
    String in_vcf
    String reference
    String atomized_variants_dot_megalodon_dot_vcf
  }
  command <<<
    megalodon_extras variants atomize \
      ~{in_vcf} \
      ~{reference} \
      ~{atomized_variants_dot_megalodon_dot_vcf} \
      ~{if defined(out_vcf) then ("--out-vcf " +  '"' + out_vcf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    out_vcf: "Output VCF file. Default:"
    in_vcf: "Proposed varitants (VCF)"
    reference: "Reference FASTA or minimap2 index file corresponding\\nto VCF."
    atomized_variants_dot_megalodon_dot_vcf: "--max-indel-size MAX_INDEL_SIZE"
  }
  output {
    File out_stdout = stdout()
    File out_out_vcf = "${in_out_vcf}"
  }
}