version 1.0

task UmiReformatSraFastq {
  input {
    String? input_fastq_file
    String? output_fastq_file_containing_reads_duplicates
    String? pcr_duplicate
    String? reads_with_improper_umi
    String? errors_allowed
    Boolean? verbose
    String? umi_pattern_five
    String? umi_pattern_three
    Boolean? debug
  }
  command <<<
    umi_reformat_sra_fastq \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(output_fastq_file_containing_reads_duplicates) then ("--output " +  '"' + output_fastq_file_containing_reads_duplicates + '"') else ""} \
      ~{if defined(pcr_duplicate) then ("--pcr-duplicate " +  '"' + pcr_duplicate + '"') else ""} \
      ~{if defined(reads_with_improper_umi) then ("--reads-with-improper-umi " +  '"' + reads_with_improper_umi + '"') else ""} \
      ~{if defined(errors_allowed) then ("--errors-allowed " +  '"' + errors_allowed + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(umi_pattern_five) then ("--umi-pattern-5 " +  '"' + umi_pattern_five + '"') else ""} \
      ~{if defined(umi_pattern_three) then ("--umi-pattern-3 " +  '"' + umi_pattern_three + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_fastq_file: "the input fastq file. (default: None)"
    output_fastq_file_containing_reads_duplicates: "the output fastq file containing reads that are not duplicates (default: None)"
    pcr_duplicate: "The output fastq file containing PCR duplicates (default: None)"
    reads_with_improper_umi: "The output fastq file containing reads with improper UMIs. The default is to throw away these reads. This is for debugging purposes (default: )"
    errors_allowed: "Setting it to >=1 allows errors in UMIs. Otherwise, no errors are allowed in UMIs. (default: 0)"
    verbose: "Also include detailed run info (default: False)"
    umi_pattern_five: "Set the UMI pattern at the 5' end. Use ACGT for fixed nt and N for variable nt in UMI. If there are multiple patterns, separate them using comma (default: NNNCGANNNTACNNN,NNNATCNNNAGTNNN)"
    umi_pattern_three: "Set the UMI pattern at the 3' end. Use ACGT for fixed nt and N for variable nt in UMI. If there are multiple patterns, separate them using comma (default: NNNGTCNNNTAGNNN)"
    debug: "More output for debugging (default: False)"
  }
}