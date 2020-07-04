version 1.0

task Msa2vcf.py {
  input {
    String? reference_chr
    String? reference_start
    String? reference_sequence
    String? bcf_tools
    String input_fasta_msa
    String output_vcf_file
  }
  command <<<
    msa2vcf.py \
      ~{input_fasta_msa} \
      ~{output_vcf_file} \
      ~{if defined(reference_chr) then ("--reference-chr " +  '"' + reference_chr + '"') else ""} \
      ~{if defined(reference_start) then ("--reference-start " +  '"' + reference_start + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if defined(bcf_tools) then ("--bcftools " +  '"' + bcf_tools + '"') else ""}
  >>>
  parameter_meta {
    reference_chr: "Reference chromosome"
    reference_start: "Reference start pos"
    reference_sequence: "Reference FASTA for checking REF"
    bcf_tools: "Path to bcftools"
    input_fasta_msa: "Input Fasta MSA file"
    output_vcf_file: "Output VCF file"
  }
}