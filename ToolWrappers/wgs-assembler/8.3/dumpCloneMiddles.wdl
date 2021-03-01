version 1.0

task DumpCloneMiddles {
  input {
    String? attempt_guess_options
    Boolean? ctg
    Boolean? scf
    String? _generate_contig
    Int? _generate_scaffolds
    Boolean? suppress_surrogate_fragment
    String? n
    String? c
    String? o
    String? g
    String? other
  }
  command <<<
    dumpCloneMiddles \
      ~{other} \
      ~{if defined(attempt_guess_options) then ("-p " +  '"' + attempt_guess_options + '"') else ""} \
      ~{if (ctg) then "-ctg" else ""} \
      ~{if (scf) then "-scf" else ""} \
      ~{if defined(_generate_contig) then ("-i " +  '"' + _generate_contig + '"') else ""} \
      ~{if defined(_generate_scaffolds) then ("-l " +  '"' + _generate_scaffolds + '"') else ""} \
      ~{if (suppress_surrogate_fragment) then "-S" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    attempt_guess_options: "-- attempt to guess all the required options, if your assembly\\nfollows runCA-OBT naming conventions."
    ctg: "-- dump contigs"
    scf: "-- dump scaffolds"
    _generate_contig: "-- generate a single contig or scaffold"
    _generate_scaffolds: "-- generate only scaffolds larger than min length"
    suppress_surrogate_fragment: "-- suppress surrogate fragment placement (possibly multiple placements per frg)"
    n: ""
    c: ""
    o: ""
    g: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
  }
}