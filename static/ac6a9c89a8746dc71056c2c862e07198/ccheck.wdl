version 1.0

task Ccheck {
  input {
    File? reference
    Boolean? ancient
    Boolean? transversions
    String? span
    String? num_pos
    Boolean? force
    Boolean? table
    Boolean? verbose
    String aln_dot_mal_n
  }
  command <<<
    ccheck \
      ~{aln_dot_mal_n} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--ancient" false="" ancient} \
      ~{true="--transversions" false="" transversions} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(num_pos) then ("--numpos " +  '"' + num_pos + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--table" false="" table} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    reference: "FASTA file with the likely contaminant (default: builtin mt311)"
    ancient: "Treat DNA as ancient (i.e. likely deaminated)"
    transversions: "Treat only transversions as diagnostic"
    span: "Look only at range from M to N"
    num_pos: "Require N diagnostic sites in a single read (default: 1)"
    force: "Do not look for a higher numbered .maln"
    table: "Output as tables (easier for scripts, harder on the eyes)"
    verbose: "Increase verbosity level (can be repeated)"
    aln_dot_mal_n: ""
  }
}