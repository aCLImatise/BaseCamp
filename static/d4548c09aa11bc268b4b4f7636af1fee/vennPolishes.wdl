version 1.0

task VennPolishes {
  input {
    Int? there_numseqs_input
    Int? filter_matches_be_identitydefault
    Int? filter_matches_be_mincover
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
      ~{if defined(there_numseqs_input) then ("-n " +  '"' + there_numseqs_input + '"') else ""} \
      ~{if defined(filter_matches_be_identitydefault) then ("-i " +  '"' + filter_matches_be_identitydefault + '"') else ""} \
      ~{if defined(filter_matches_be_mincover) then ("-c " +  '"' + filter_matches_be_mincover + '"') else ""} \
      ~{if defined(dump_sequence_iids) then ("-d " +  '"' + dump_sequence_iids + '"') else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    there_numseqs_input: "there are <num-seqs> in the input set"
    filter_matches_be_identitydefault: "filter matches to be >= <min-ident> identity\\ndefault = 95"
    filter_matches_be_mincover: "filter matches to be >= <min-cover> coverage\\ndefault = 50"
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