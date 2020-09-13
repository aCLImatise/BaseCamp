version 1.0

task CreateSnpReferenceSeqpy {
  input {
    Boolean? force
    File? snp_list_file
    File? output_file_relative
    Int? verbose
    String cfsan_snp_pipeline
    String snp_reference
  }
  command <<<
    create_snp_reference_seq_py \
      ~{cfsan_snp_pipeline} \
      ~{snp_reference} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(snp_list_file) then ("--snpListFile " +  '"' + snp_list_file + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs (default: False)"
    snp_list_file: "Relative or absolute path to the SNP list file\\n(default: snplist.txt)"
    output_file_relative: "Output file. Relative or absolute path to the SNP\\nreference sequence file (default: referenceSNP.fasta)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    cfsan_snp_pipeline: ""
    snp_reference: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_relative = "${in_output_file_relative}"
  }
}