version 1.0

task AugurIndex {
  input {
    String? sequences
    Int? tabdelimited_file_containing
    Boolean? verbose
  }
  command <<<
    augur index \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(tabdelimited_file_containing) then ("--output " +  '"' + tabdelimited_file_containing + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    sequences: "sequences in fasta format (default: None)"
    tabdelimited_file_containing: "tab-delimited file containing the number of bases per\\nsequence in the given file. Output columns include\\nstrain, length, and counts for A, C, G, T, N, other\\nvalid IUPAC characters, ambiguous characters ('?' and\\n'-'), and other invalid characters. (default: None)"
    verbose: "print index statistics to stdout (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}