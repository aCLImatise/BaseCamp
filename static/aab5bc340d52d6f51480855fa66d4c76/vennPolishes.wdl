version 1.0

task VennPolishes {
  input {
    String? there_numseqs_input
    Int? filter_matches_minident
    Int? filter_matches_mincover
    String? dump_sequence_iids
    Boolean? plot
    String given
    String var_6
    String sets
    String of
    String sim_four
    String polishes
  }
  command <<<
    vennPolishes \
      ~{given} \
      ~{var_6} \
      ~{sets} \
      ~{of} \
      ~{sim_four} \
      ~{polishes} \
      ~{if defined(there_numseqs_input) then ("-n " +  '"' + there_numseqs_input + '"') else ""} \
      ~{if defined(filter_matches_minident) then ("-i " +  '"' + filter_matches_minident + '"') else ""} \
      ~{if defined(filter_matches_mincover) then ("-c " +  '"' + filter_matches_mincover + '"') else ""} \
      ~{if defined(dump_sequence_iids) then ("-d " +  '"' + dump_sequence_iids + '"') else ""} \
      ~{true="-plot" false="" plot}
  >>>
  parameter_meta {
    there_numseqs_input: "there are <num-seqs> in the input set"
    filter_matches_minident: "filter matches to be >= <min-ident> identity default = 95"
    filter_matches_mincover: "filter matches to be >= <min-cover> coverage default = 50"
    dump_sequence_iids: "dump the sequence IIDs in <class-id> to stdout"
    plot: "write a plot-able datafile of the venn diagram for percent identity <min-idenit> to 100 (inclusive) and <min-cover> coverage."
    given: ""
    var_6: ""
    sets: ""
    of: ""
    sim_four: ""
    polishes: ""
  }
}