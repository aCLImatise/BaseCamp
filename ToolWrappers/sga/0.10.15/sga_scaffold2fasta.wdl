version 1.0

task SgaScaffold2fasta {
  input {
    Boolean? verbose
    File? contig_file
    File? as_qg_file
    Boolean? no_singletons
    File? outfile
    Int? min_length
    Boolean? write_unplaced
    Boolean? write_names
    Int? min_gap_length
    Boolean? use_overlap
    Int? graph_resolve
    Int? distance_factor
    Int scaffold_two_fast_a
  }
  command <<<
    sga scaffold2fasta \
      ~{scaffold_two_fast_a} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(contig_file) then ("--contig-file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(as_qg_file) then ("--asqg-file " +  '"' + as_qg_file + '"') else ""} \
      ~{if (no_singletons) then "--no-singletons" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (write_unplaced) then "--write-unplaced" else ""} \
      ~{if (write_names) then "--write-names" else ""} \
      ~{if defined(min_gap_length) then ("--min-gap-length " +  '"' + min_gap_length + '"') else ""} \
      ~{if (use_overlap) then "--use-overlap" else ""} \
      ~{if defined(graph_resolve) then ("--graph-resolve " +  '"' + graph_resolve + '"') else ""} \
      ~{if defined(distance_factor) then ("--distanceFactor " +  '"' + distance_factor + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    contig_file: "read the contig sequences from FILE"
    as_qg_file: "read the contig string graph from FILE. This supercedes --contig-file\\nthis is usually the output from the sga-assemble step"
    no_singletons: "do not output scaffolds that consist of a single contig"
    outfile: "write the scaffolds to FILE (default: scaffolds.fa)"
    min_length: "only output scaffolds longer than N bases"
    write_unplaced: "output unplaced contigs that are larger than minLength"
    write_names: "write the name of contigs contained in the scaffold in the FASTA header"
    min_gap_length: "separate contigs by at least N bases. All predicted gaps less\\nthan N will be extended to N (default: 25)"
    use_overlap: "attempt to merge contigs using predicted overlaps.\\nThis can help close gaps in the scaffolds but comes\\nwith a small risk of collapsing tandem repeats."
    graph_resolve: "if an ASQG file is present, attempt to resolve the links\\nbetween contigs using walks through the graph. The MODE parameter\\nis a string describing the algorithm to use.\\nThe MODE parameter must be one of best-any|best-unique|unique|none.\\nbest-any: The walk with length closest to the estimated\\ndistance between the contigs will be chosen to resolve the gap.\\nIf multiple best walks are found, the tie is broken arbitrarily.\\nbest-unique: as above but if there is a tie no walk will be chosen.\\nunique: only resolve the gap if there is a single walk between the contigs\\nnone: do not resolve gaps using the graph\\nThe most conservative most is unique, then best-unique with best-any being the most\\naggressive. The default is unique"
    distance_factor: "Accept a walk as correctly resolving a gap if the walk length is within T standard\\ndeviations from the estimated distance (default: 3.0f)"
    scaffold_two_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_as_qg_file = "${in_as_qg_file}"
  }
}