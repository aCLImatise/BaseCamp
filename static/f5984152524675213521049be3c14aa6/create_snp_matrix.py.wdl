version 1.0

task CreateSnpMatrixpy {
  input {
    Boolean? force
    File? cons_filename
    File? output_file_path
    Int? verbose
    String cfsan_snp_pipeline
    String snp_matrix
  }
  command <<<
    create_snp_matrix_py \
      ~{cfsan_snp_pipeline} \
      ~{snp_matrix} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(cons_filename) then ("--consFileName " +  '"' + cons_filename + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs (default: False)"
    cons_filename: "File name of the previously created consensus SNP call\\nfile which must exist in each of the sample\\ndirectories (default: consensus.fasta)"
    output_file_path: "Output file. Relative or absolute path to the SNP\\nmatrix file (default: snpma.fasta)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    cfsan_snp_pipeline: ""
    snp_matrix: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}