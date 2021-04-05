version 1.0

task AgatSpLoadFunctionFromProteinAlignpl {
  input {
    File? annotation
    Boolean? pg_ff
    File? p_fast_a
    Int? method
    Int? threshold
    Boolean? compute_overlap_score
    Boolean? pe
    Boolean? test
    Boolean? sp
    String? priority
    Boolean? be_verbose
    File? output_gff_file
    String agat_sp_load_function_from_protein_align_do_tpl
    String option_dot
  }
  command <<<
    agat_sp_load_function_from_protein_align_pl \
      ~{agat_sp_load_function_from_protein_align_do_tpl} \
      ~{option_dot} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (pg_ff) then "-pgff" else ""} \
      ~{if defined(p_fast_a) then ("-pfasta " +  '"' + p_fast_a + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (compute_overlap_score) then "-w" else ""} \
      ~{if (pe) then "--pe" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (sp) then "--sp" else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if (be_verbose) then "-v" else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    annotation: "Input gtf/gff file of an annotation."
    pg_ff: "Input gff file of aligned proteins."
    p_fast_a: "protein fasta file where the extra information will be\\nretrieved for each aligned protein."
    method: "Rule to apply to lift function when a protein map properly. 1)\\nreplace => replace or add the product and Name attribute's\\nvalues. 2) complete => add the product and Name attribute's\\nvalues only if doesn't exist. 3) add => add the lfp_product and\\nlfp_name attributes with the corresponding values"
    threshold: "Gene mapping percentage over which a gene must be reported. By\\ndefault the value is 50."
    compute_overlap_score: "Compute the overlap score based on the whole annotation\\nsequence. By default we use only the coding sequence part."
    pe: "Protein existence value. We will take the best overlap score\\nprotein according to the PE expected 1. Experimental evidence at\\nprotein level 2. Experimental evidence at transcript level 3.\\nProtein inferred from homology 4. Protein predicted 5. Protein\\nuncertain"
    test: "Test to apply (> < = >= <=). If you us one of these two\\ncharacter >, <, please don't forget to quote you parameter liket\\nthat \\\"<=\\\". Else your terminal will complain."
    sp: "Species, between the set of the best protein aligned we try\\nfirst to take the one that follow the species prioritization\\ndefined. There is a default one, but you can define you own\\n(quoted and coma separated value)like that: \\\"mus Musculus, Homo\\nSapiens\\\" from the most important to the less important. In that\\ncase Mus will be taken first even if a better overlaping one\\nexist for human. If none of them is found we take anyway the\\nbest overlapping one."
    priority: "By default the priority is PE test before species test when both\\nare applied. You can flip these two test by activating this\\noption like this: -p species"
    be_verbose: "Be verbose."
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_load_function_from_protein_align_do_tpl: "Description:"
    option_dot: "Usage:\\nagat_sp_load_function_from_protein_align.pl -a annotation.gff --pgff protein.gff --pfasta protein.fasta [ -o outfile ]\\nagat_sp_load_function_from_protein_align.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}