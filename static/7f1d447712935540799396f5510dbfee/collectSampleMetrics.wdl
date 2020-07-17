version 1.0

task CollectSampleMetrics.sh {
  input {
    Boolean? force
    File? output_file_relative
    Int? max_snps
    String? file_name_consensus_fasta
    String? file_name_fasta
    String? file_name_consensus_vcf
    String? file_name_vcf
    String? verbose
    String sample_dir
    String reference_file
  }
  command <<<
    collectSampleMetrics.sh \
      ~{sample_dir} \
      ~{reference_file} \
      ~{true="--force" false="" force} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(max_snps) then ("--maxsnps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(file_name_consensus_fasta) then ("-c " +  '"' + file_name_consensus_fasta + '"') else ""} \
      ~{if defined(file_name_fasta) then ("-C " +  '"' + file_name_fasta + '"') else ""} \
      ~{if defined(file_name_consensus_vcf) then ("-v " +  '"' + file_name_consensus_vcf + '"') else ""} \
      ~{if defined(file_name_vcf) then ("-V " +  '"' + file_name_vcf + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist and are newer than inputs (default: False)"
    output_file_relative: "Output file. Relative or absolute path to the metrics file (default: metrics)"
    max_snps: "Maximum allowed number of SNPs per sample (default: -1)"
    file_name_consensus_fasta: "File name of the consensus fasta file which must exist in the sample directory (default: consensus.fasta)"
    file_name_fasta: "File name of the consensus preserved fasta file which must exist in the sample directory (default: consensus_preserved.fasta)"
    file_name_consensus_vcf: "File name of the consensus vcf file which must exist in the sample directory (default: consensus.vcf)"
    file_name_vcf: "File name of the consensus preserved vcf file which must exist in the sample directory (default: consensus_preserved.vcf)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dir: "Relative or absolute directory of the sample"
    reference_file: "Relative or absolute path to the reference fasta file"
  }
}