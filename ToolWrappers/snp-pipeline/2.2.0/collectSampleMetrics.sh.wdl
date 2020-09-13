version 1.0

task CollectSampleMetricssh {
  input {
    Boolean? force
    File? output_file_relative
    Int? max_snps
    File? file_name_must_existin_consensusfasta
    File? file_name_fasta
    File? file_name_must_existin_consensusvcf
    File? file_name_vcf
    Int? verbose
    String sample_dir
    String reference_file
  }
  command <<<
    collectSampleMetrics_sh \
      ~{sample_dir} \
      ~{reference_file} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(max_snps) then ("--maxsnps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(file_name_must_existin_consensusfasta) then ("-c " +  '"' + file_name_must_existin_consensusfasta + '"') else ""} \
      ~{if defined(file_name_fasta) then ("-C " +  '"' + file_name_fasta + '"') else ""} \
      ~{if defined(file_name_must_existin_consensusvcf) then ("-v " +  '"' + file_name_must_existin_consensusvcf + '"') else ""} \
      ~{if defined(file_name_vcf) then ("-V " +  '"' + file_name_vcf + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    output_file_relative: "Output file. Relative or absolute path to the metrics\\nfile (default: metrics)"
    max_snps: "Maximum allowed number of SNPs per sample (default:\\n-1)"
    file_name_must_existin_consensusfasta: "File name of the consensus fasta file which must exist\\nin the sample directory (default: consensus.fasta)"
    file_name_fasta: "File name of the consensus preserved fasta file which\\nmust exist in the sample directory (default:\\nconsensus_preserved.fasta)"
    file_name_must_existin_consensusvcf: "File name of the consensus vcf file which must exist\\nin the sample directory (default: consensus.vcf)"
    file_name_vcf: "File name of the consensus preserved vcf file which\\nmust exist in the sample directory (default:\\nconsensus_preserved.vcf)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dir: "Relative or absolute directory of the sample"
    reference_file: "Relative or absolute path to the reference fasta file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_relative = "${in_output_file_relative}"
  }
}