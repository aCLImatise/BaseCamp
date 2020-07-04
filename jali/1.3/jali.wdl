version 1.0

task Jali {
  input {
    String? amino_acid_similarity
    String? i
    String? e
    String? j
    String? ascii_default_html
    Boolean? print_alignment
    Boolean? run_verbose_mode
    Boolean? print_version
    String sequence_dot_fast_a
    String alignment_dot_fast_a
  }
  command <<<
    jali \
      ~{sequence_dot_fast_a} \
      ~{alignment_dot_fast_a} \
      ~{if defined(amino_acid_similarity) then ("-w " +  '"' + amino_acid_similarity + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""} \
      ~{if defined(ascii_default_html) then ("-f " +  '"' + ascii_default_html + '"') else ""} \
      ~{true="-p" false="" print_alignment} \
      ~{true="-o" false="" run_verbose_mode} \
      ~{true="-v" false="" print_version}
  >>>
  parameter_meta {
    amino_acid_similarity: "//amino acid similarity matrix"
    i: "//must be smaller or equal to zero"
    e: "//must be smaller or equal to zero"
    j: "//must be smaller or equal to zero"
    ascii_default_html: "//0:ASCII (default) 1:HTML 2:double-spaced HTML"
    print_alignment: "//print alignment"
    run_verbose_mode: "//run in verbose mode"
    print_version: "//print version"
    sequence_dot_fast_a: ""
    alignment_dot_fast_a: ""
  }
}