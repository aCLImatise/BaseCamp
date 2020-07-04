version 1.0

task AgatSpLoadFunctionFromProteinAlign.pl {
  input {
    String? method
    String? threshold
    Boolean? compute_overlap_score
    Boolean? pe
    Boolean? test
    Boolean? sp
    String? priority
    Boolean? be_verbose
    Boolean? _output_
    String? a
    String? pg_ff
    String? p_fast_a
  }
  command <<<
    agat_sp_load_function_from_protein_align.pl \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="-w" false="" compute_overlap_score} \
      ~{true="--pe" false="" pe} \
      ~{true="--test" false="" test} \
      ~{true="--sp" false="" sp} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{true="-v" false="" be_verbose} \
      ~{true="-o" false="" _output_} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(pg_ff) then ("--pgff " +  '"' + pg_ff + '"') else ""} \
      ~{if defined(p_fast_a) then ("--pfasta " +  '"' + p_fast_a + '"') else ""}
  >>>
  parameter_meta {
    method: "Rule to apply to lift function when a protein map properly. 1) replace => replace or add the product and Name attribute's values. 2) complete => add the product and Name attribute's values only if doesn't exist. 3) add => add the lfp_product and lfp_name attributes with the corresponding values"
    threshold: "Gene mapping percentage over which a gene must be reported. By default the value is 50."
    compute_overlap_score: "Compute the overlap score based on the whole annotation sequence. By default we use only the coding sequence part."
    pe: "Protein existence value. We will take the best overlap score protein according to the PE expected 1. Experimental evidence at protein level 2. Experimental evidence at transcript level 3. Protein inferred from homology 4. Protein predicted 5. Protein uncertain"
    test: "Test to apply (> < = >= <=). If you us one of these two character >, <, please don't forget to quote you parameter liket that \"<=\". Else your terminal will complain."
    sp: "Species, between the set of the best protein aligned we try first to take the one that follow the species prioritization defined. There is a default one, but you can define you own (quoted and coma separated value)like that: \"mus Musculus, Homo Sapiens\" from the most important to the less important. In that case Mus will be taken first even if a better overlaping one exist for human. If none of them is found we take anyway the best overlapping one."
    priority: "By default the priority is PE test before species test when both are applied. You can flip these two test by activating this option like this: -p species"
    be_verbose: "Be verbose."
    _output_: ", --output or --out Output GFF file. If no output file is specified, the output will be written to STDOUT."
    a: ""
    pg_ff: ""
    p_fast_a: ""
  }
}