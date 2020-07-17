version 1.0

task SgaScaffold2fasta {
  input {
    Boolean? verbose
    File? contig_file
    File? as_qg_file
    Boolean? no_singletons
    File? outfile
    String? min_length
    Boolean? write_unplaced
    Boolean? write_names
    String? min_gap_length
    Boolean? use_overlap
    String? graph_resolve
    String? distance_factor
    String scaffold_two_fast_a
    String? option
  }
  command <<<
    sga scaffold2fasta \
      ~{scaffold_two_fast_a} \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(contig_file) then ("--contig-file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(as_qg_file) then ("--asqg-file " +  '"' + as_qg_file + '"') else ""} \
      ~{true="--no-singletons" false="" no_singletons} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{true="--write-unplaced" false="" write_unplaced} \
      ~{true="--write-names" false="" write_names} \
      ~{if defined(min_gap_length) then ("--min-gap-length " +  '"' + min_gap_length + '"') else ""} \
      ~{true="--use-overlap" false="" use_overlap} \
      ~{if defined(graph_resolve) then ("--graph-resolve " +  '"' + graph_resolve + '"') else ""} \
      ~{if defined(distance_factor) then ("--distanceFactor " +  '"' + distance_factor + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    contig_file: "read the contig sequences from FILE"
    as_qg_file: "read the contig string graph from FILE. This supercedes --contig-file this is usually the output from the sga-assemble step"
    no_singletons: "do not output scaffolds that consist of a single contig"
    outfile: "write the scaffolds to FILE (default: scaffolds.fa)"
    min_length: "only output scaffolds longer than N bases"
    write_unplaced: "output unplaced contigs that are larger than minLength"
    write_names: "write the name of contigs contained in the scaffold in the FASTA header"
    min_gap_length: "separate contigs by at least N bases. All predicted gaps less than N will be extended to N (default: 25)"
    use_overlap: "attempt to merge contigs using predicted overlaps. This can help close gaps in the scaffolds but comes with a small risk of collapsing tandem repeats."
    graph_resolve: "if an ASQG file is present, attempt to resolve the links between contigs using walks through the graph. The MODE parameter is a string describing the algorithm to use. The MODE parameter must be one of best-any|best-unique|unique|none. best-any: The walk with length closest to the estimated distance between the contigs will be chosen to resolve the gap. If multiple best walks are found, the tie is broken arbitrarily. best-unique: as above but if there is a tie no walk will be chosen. unique: only resolve the gap if there is a single walk between the contigs none: do not resolve gaps using the graph The most conservative most is unique, then best-unique with best-any being the most aggressive. The default is unique"
    distance_factor: "Accept a walk as correctly resolving a gap if the walk length is within T standard  deviations from the estimated distance (default: 3.0f)"
    scaffold_two_fast_a: ""
    option: ""
  }
}