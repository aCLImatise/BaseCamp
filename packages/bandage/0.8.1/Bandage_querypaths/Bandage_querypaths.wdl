version 1.0

task BandageQuerypaths {
  input {
    Boolean? path_fast_a
    Boolean? hits_fast_a
    Boolean? help_all
    String graph
    String queries
    String output_prefix
  }
  command <<<
    Bandage querypaths \
      ~{graph} \
      ~{queries} \
      ~{output_prefix} \
      ~{if (path_fast_a) then "--pathfasta" else ""} \
      ~{if (hits_fast_a) then "--hitsfasta" else ""} \
      ~{if (help_all) then "--helpall" else ""}
  >>>
  parameter_meta {
    path_fast_a: "Put all query path sequences in a multi-FASTA file, not in the TSV file"
    hits_fast_a: "Produce a multi-FASTA file of all BLAST hits in the query paths"
    help_all: "View all command line settings"
    graph: ""
    queries: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}