version 1.0

task CreateSnpMatrix.py {
  input {
    Boolean? force
    String? cons_filename
    File? output_file_relative
    String? verbose
    String sample_dirs_file
  }
  command <<<
    create_snp_matrix.py \
      ~{sample_dirs_file} \
      ~{true="--force" false="" force} \
      ~{if defined(cons_filename) then ("--consFileName " +  '"' + cons_filename + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists and is newer than inputs (default: False)"
    cons_filename: "File name of the previously created consensus SNP call file which must exist in each of the sample directories (default: consensus.fasta)"
    output_file_relative: "Output file. Relative or absolute path to the SNP matrix file (default: snpma.fasta)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of directories -- one per sample"
  }
}