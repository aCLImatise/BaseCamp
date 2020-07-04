version 1.0

task SnpParser {
  input {
    String? output_file
    Int? min_qual
    Int? min_freq
    Int? min_reads
    String? gff_file
    String? vcf_file
    String? reference
    String? samples_id
    String? cov_suff
    Boolean? bcf_tools_vcf
    Boolean? verbose
    Boolean? quiet
    Boolean? cite
    Boolean? manual
  }
  command <<<
    snp_parser \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_freq) then ("--min-freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(gff_file) then ("--gff-file " +  '"' + gff_file + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf-file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(samples_id) then ("--samples-id " +  '"' + samples_id + '"') else ""} \
      ~{if defined(cov_suff) then ("--cov-suff " +  '"' + cov_suff + '"') else ""} \
      ~{true="--bcftools-vcf" false="" bcf_tools_vcf} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--cite" false="" cite} \
      ~{true="--manual" false="" manual}
  >>>
  parameter_meta {
    output_file: "Ouput file (default: snp_data.pickle)"
    min_qual: "Minimum SNP quality (Phred score) (default: 30)"
    min_freq: "Minimum allele frequency (default: 0.01)"
    min_reads: "Minimum number of reads to accept the SNP (default: 4)"
    gff_file: "GFF file with annotations (default: None)"
    vcf_file: "Merged VCF file (default: None)"
    reference: "Fasta file with the GFF Reference (default: None)"
    samples_id: "the ids of the samples used in the analysis (default: None)"
    cov_suff: "Per sample coverage suffix in the GFF (default: _cov)"
    bcf_tools_vcf: "bcftools call was used to produce the VCF file (default: False)"
    verbose: "more verbose - includes debug messages (default: 20)"
    quiet: "less verbose - only error and critical messages (default: None)"
    cite: "Show citation for the framework"
    manual: "Show the script manual"
  }
}