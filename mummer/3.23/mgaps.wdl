version 1.0

task Mgaps {
  input {
    Boolean? check_fasta_labels
    Int? fixed_diagonal_difference
    Boolean? use_extent_start
    Int? fraction_separation_diagonal
    Int? minimum_length_cluster
    Int? maximum_separation_matches
  }
  command <<<
    mgaps \
      ~{if (check_fasta_labels) then "-C" else ""} \
      ~{if defined(fixed_diagonal_difference) then ("-d " +  '"' + fixed_diagonal_difference + '"') else ""} \
      ~{if (use_extent_start) then "-e" else ""} \
      ~{if defined(fraction_separation_diagonal) then ("-f " +  '"' + fraction_separation_diagonal + '"') else ""} \
      ~{if defined(minimum_length_cluster) then ("-l " +  '"' + minimum_length_cluster + '"') else ""} \
      ~{if defined(maximum_separation_matches) then ("-s " +  '"' + maximum_separation_matches + '"') else ""}
  >>>
  parameter_meta {
    check_fasta_labels: "Check that fasta header labels alternately have \\\"Reverse\\\""
    fixed_diagonal_difference: "Fixed diagonal difference to join matches"
    use_extent_start: "Use extent of match (end - start) rather than sum of piece\\nlengths to determine length of cluster"
    fraction_separation_diagonal: "Fraction of separation for diagonal difference"
    minimum_length_cluster: "Minimum length of cluster match"
    maximum_separation_matches: "Maximum separation between matches in cluster"
  }
  output {
    File out_stdout = stdout()
  }
}