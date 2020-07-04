version 1.0

task CalculateSnpDistances.py {
  input {
    Boolean? force
    File? pairs
    File? matrix
    String? verbose
    String snp_matrix_file
  }
  command <<<
    calculate_snp_distances.py \
      ~{snp_matrix_file} \
      ~{true="--force" false="" force} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists and is newer than inputs (default: False)"
    pairs: "Relative or absolute path to the pairwise distance output file. (default: None)"
    matrix: "Relative or absolute path to the distance matrix output file. (default: None)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    snp_matrix_file: "Relative or absolute path to the input multi-fasta SNP matrix file."
  }
}