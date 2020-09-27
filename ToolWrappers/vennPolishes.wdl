version 1.0

task VennPolishes {
  input {
    Int? there_input_set
    Int? filter_matches_minident
    Int? filter_matches_mincover
    String? dump_sequence_iids
    Boolean? plot
    String given
    String var_6
    String sets
    String of
    Int sim_four
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
      ~{if defined(there_input_set) then ("-n " +  '"' + there_input_set + '"') else ""} \
      ~{if defined(filter_matches_minident) then ("-i " +  '"' + filter_matches_minident + '"') else ""} \
      ~{if defined(filter_matches_mincover) then ("-c " +  '"' + filter_matches_mincover + '"') else ""} \
      ~{if defined(dump_sequence_iids) then ("-d " +  '"' + dump_sequence_iids + '"') else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    there_input_set: "there are <num-seqs> in the input set"
    filter_matches_minident: "filter matches to be >= <min-ident> identity\\ndefault = 95"
    filter_matches_mincover: "filter matches to be >= <min-cover> coverage\\ndefault = 50"
    dump_sequence_iids: "dump the sequence IIDs in <class-id> to stdout"
    plot: "write a plot-able datafile of the venn diagram\\nfor percent identity <min-idenit> to 100 (inclusive)\\nand <min-cover> coverage.\\n"
    given: ""
    var_6: ""
    sets: ""
    of: ""
    sim_four: ""
    polishes: ""
  }
  output {
    File out_stdout = stdout()
  }
}