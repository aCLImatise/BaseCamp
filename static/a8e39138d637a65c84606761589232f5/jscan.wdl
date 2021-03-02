version 1.0

task Jscan {
  input {
    File? amino_acid_similarity
    String? i
    String? e
    String? j
    String? print_best_l
    Boolean? run_verbose_mode
    Boolean? print_version
    String sequence_dot_fast_a
    String alignment_db_dot_prodom
  }
  command <<<
    jscan \
      ~{sequence_dot_fast_a} \
      ~{alignment_db_dot_prodom} \
      ~{if defined(amino_acid_similarity) then ("-w " +  '"' + amino_acid_similarity + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""} \
      ~{if defined(print_best_l) then ("-l " +  '"' + print_best_l + '"') else ""} \
      ~{if (run_verbose_mode) then "-o" else ""} \
      ~{if (print_version) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    amino_acid_similarity: "//amino acid similarity matrix"
    i: "//must be smaller or equal to zero"
    e: "//must be smaller or equal to zero"
    j: "//must be smaller or equal to zero"
    print_best_l: "//print best l scores"
    run_verbose_mode: "//run in verbose mode"
    print_version: "//print version"
    sequence_dot_fast_a: ""
    alignment_db_dot_prodom: ""
  }
  output {
    File out_stdout = stdout()
  }
}