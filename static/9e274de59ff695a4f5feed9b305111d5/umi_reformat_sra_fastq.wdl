version 1.0

task UmiReformatSraFastq {
  input {
    File? input_fastq_file
    File? output_fastq_file_containing_reads_are
    File? pcr_duplicate
    File? reads_with_improper_umi
    Int? errors_allowed
    Boolean? verbose
    Int? umi_pattern_five
    Int? umi_pattern_three
    Boolean? debug
  }
  command <<<
    umi_reformat_sra_fastq \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(output_fastq_file_containing_reads_are) then ("--output " +  '"' + output_fastq_file_containing_reads_are + '"') else ""} \
      ~{if defined(pcr_duplicate) then ("--pcr-duplicate " +  '"' + pcr_duplicate + '"') else ""} \
      ~{if defined(reads_with_improper_umi) then ("--reads-with-improper-umi " +  '"' + reads_with_improper_umi + '"') else ""} \
      ~{if defined(errors_allowed) then ("--errors-allowed " +  '"' + errors_allowed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(umi_pattern_five) then ("--umi-pattern-5 " +  '"' + umi_pattern_five + '"') else ""} \
      ~{if defined(umi_pattern_three) then ("--umi-pattern-3 " +  '"' + umi_pattern_three + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_file: "the input fastq file. (default: None)"
    output_fastq_file_containing_reads_are: "the output fastq file containing reads that are not\\nduplicates (default: None)"
    pcr_duplicate: "The output fastq file containing PCR duplicates\\n(default: None)"
    reads_with_improper_umi: "The output fastq file containing reads with improper\\nUMIs. The default is to throw away these reads. This\\nis for debugging purposes (default: )"
    errors_allowed: "Setting it to >=1 allows errors in UMIs. Otherwise, no\\nerrors are allowed in UMIs. (default: 0)"
    verbose: "Also include detailed run info (default: False)"
    umi_pattern_five: "Set the UMI pattern at the 5' end. Use ACGT for fixed\\nnt and N for variable nt in UMI. If there are multiple\\npatterns, separate them using comma (default:\\nNNNCGANNNTACNNN,NNNATCNNNAGTNNN)"
    umi_pattern_three: "Set the UMI pattern at the 3' end. Use ACGT for fixed\\nnt and N for variable nt in UMI. If there are multiple\\npatterns, separate them using comma (default:\\nNNNGTCNNNTAGNNN)"
    debug: "More output for debugging (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_output_fastq_file_containing_reads_are = "${in_output_fastq_file_containing_reads_are}"
    File out_pcr_duplicate = "${in_pcr_duplicate}"
    File out_reads_with_improper_umi = "${in_reads_with_improper_umi}"
  }
}