version 1.0

task Fugrep {
  input {
    Boolean? annotate
    Boolean? name
    Boolean? comments
    Boolean? stranded
    Boolean? fast_a
    String dna_string
    String pattern
    String example
    String input_file_dot_fa
    String test_dot_fa
    Int test_two_dot_fa
  }
  command <<<
    fu_grep \
      ~{dna_string} \
      ~{pattern} \
      ~{example} \
      ~{input_file_dot_fa} \
      ~{test_dot_fa} \
      ~{test_two_dot_fa} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (comments) then "--comments" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (fast_a) then "--fasta" else ""}
  >>>
  parameter_meta {
    annotate: "Add comments to the sequence when match is found"
    name: "Search pattern in sequence name (default: sequence)"
    comments: "Search pattern in sequence comments (default: sequence)"
    stranded: "Do not search reverse complemented oligo"
    fast_a: "Force output in FASTA format"
    dna_string: ""
    pattern: ""
    example: ""
    input_file_dot_fa: ""
    test_dot_fa: ""
    test_two_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}