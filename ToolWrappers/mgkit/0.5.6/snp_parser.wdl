version 1.0

task SnpParser {
  input {
    File? output_file
    Int? min_qual
    Int? min_freq
    Int? min_reads
    File? gff_file
    File? vcf_file
    File? reference
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
      ~{if (bcf_tools_vcf) then "--bcftools-vcf" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (cite) then "--cite" else ""} \
      ~{if (manual) then "--manual" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    output_file: "Ouput file (default: snp_data.pickle)"
    min_qual: "Minimum SNP quality (Phred score) (default: 30)"
    min_freq: "Minimum allele frequency (default: 0.01)"
    min_reads: "Minimum number of reads to accept the SNP (default: 4)"
    gff_file: "GFF file with annotations (default: None)"
    vcf_file: "Merged VCF file (default: None)"
    reference: "Fasta file with the GFF Reference (default: None)"
    samples_id: "the ids of the samples used in the analysis (default:\\nNone)"
    cov_suff: "Per sample coverage suffix in the GFF (default: _cov)"
    bcf_tools_vcf: "bcftools call was used to produce the VCF file\\n(default: False)"
    verbose: "more verbose - includes debug messages (default: 20)"
    quiet: "less verbose - only error and critical messages\\n(default: None)"
    cite: "Show citation for the framework"
    manual: "Show the script manual"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}