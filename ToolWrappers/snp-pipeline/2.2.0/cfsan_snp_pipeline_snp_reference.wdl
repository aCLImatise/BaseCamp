version 1.0

task CfsanSnpPipelineSnpReference {
  input {
    Boolean? force
    File? snp_list_file
    File? output_file_path
    Int? verbose
  }
  command <<<
    cfsan_snp_pipeline snp_reference \
      ~{if (force) then "--force" else ""} \
      ~{if defined(snp_list_file) then ("--snpListFile " +  '"' + snp_list_file + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs (default: False)"
    snp_list_file: "Relative or absolute path to the SNP list file\\n(default: snplist.txt)"
    output_file_path: "Output file. Relative or absolute path to the SNP\\nreference sequence file (default: referenceSNP.fasta)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}