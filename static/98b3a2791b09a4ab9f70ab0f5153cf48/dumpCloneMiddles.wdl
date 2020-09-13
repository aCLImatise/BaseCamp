version 1.0

task DumpCloneMiddles {
  input {
    String? _attempt_guess
    Boolean? ctg
    Boolean? scf
    String? g
    String? o
    File? c
    Int? n
    String? _generate_contig
    Int? _generate_only
    Boolean? _suppress_surrogate
    String? other
  }
  command <<<
    dumpCloneMiddles \
      ~{other} \
      ~{if defined(_attempt_guess) then ("-p " +  '"' + _attempt_guess + '"') else ""} \
      ~{if (ctg) then "-ctg" else ""} \
      ~{if (scf) then "-scf" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(_generate_contig) then ("-i " +  '"' + _generate_contig + '"') else ""} \
      ~{if defined(_generate_only) then ("-l " +  '"' + _generate_only + '"') else ""} \
      ~{if (_suppress_surrogate) then "-S" else ""}
  >>>
  parameter_meta {
    _attempt_guess: "-- attempt to guess all the required options, if your assembly\\nfollows runCA-OBT naming conventions."
    ctg: "-- dump contigs"
    scf: "-- dump scaffolds"
    g: ""
    o: ""
    c: ""
    n: ""
    _generate_contig: "-- generate a single contig or scaffold"
    _generate_only: "-- generate only scaffolds larger than min length"
    _suppress_surrogate: "-- suppress surrogate fragment placement (possibly multiple placements per frg)"
    other: ""
  }
  output {
    File out_stdout = stdout()
  }
}