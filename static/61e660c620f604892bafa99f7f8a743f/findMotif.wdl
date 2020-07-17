version 1.0

task FindMotif {
  input {
    String? verbose
    String? motif
    String sequence
  }
  command <<<
    findMotif \
      ~{sequence} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(motif) then ("-motif " +  '"' + motif + '"') else ""}
  >>>
  parameter_meta {
    verbose: "- will display gaps as bed file data lines to stderr"
    motif: ""
    sequence: ""
  }
}