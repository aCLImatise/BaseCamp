version 1.0

task Ntdpal {
  input {
    String? scoring_matrix_modified
    String? end_postion_alignment
    Boolean? fone
    Float? different_scoring_matrix
    String? alignment_displayed_stderr
    String? only__score
    String? m
    String? l
    String? g
  }
  command <<<
    ntdpal \
      ~{if defined(scoring_matrix_modified) then ("-a " +  '"' + scoring_matrix_modified + '"') else ""} \
      ~{if defined(end_postion_alignment) then ("-e " +  '"' + end_postion_alignment + '"') else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if defined(different_scoring_matrix) then ("-h " +  '"' + different_scoring_matrix + '"') else ""} \
      ~{if defined(alignment_displayed_stderr) then ("-p " +  '"' + alignment_displayed_stderr + '"') else ""} \
      ~{if defined(only__score) then ("-s " +  '"' + only__score + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    scoring_matrix_modified: "the scoring matrix to be modified by dpal_set_ambiguity_codes."
    end_postion_alignment: "the end postion of the alignment in both sequences to\\nbe printed.  Do not confuse with the 'e' <mode>."
    fone: ", f3\\nforce specific implementations.\\n-f2 forces use an implementation that might provide more\\ninformative error messages, possibly at the expense\\nof some speed."
    different_scoring_matrix: "a different scoring matrix: G and C matches = 3, A and T = 2,\\nand mismatches = -0.5.\\n(The default scoring matrix assigns 1 to a match,\\nand -1 to a mismatch.)"
    alignment_displayed_stderr: "the alignment to be displayed on stderr."
    only__score: "_only_ the score to printed."
    m: ""
    l: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}