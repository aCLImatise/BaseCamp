version 1.0

task IgdiscoverDiscoverjd {
  input {
    File? database
    Boolean? merge
    Boolean? no_merge
    String? gene
    Int? j_coverage
    Float? allele_ratio
    Float? cross_mapping_ratio
    Int? min_count
    Boolean? no_perfect_matches
    Int? d_core_length
    Int? d_core
    File? fast_a
  }
  command <<<
    igdiscover discoverjd \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (no_merge) then "--no-merge" else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(j_coverage) then ("--j-coverage " +  '"' + j_coverage + '"') else ""} \
      ~{if defined(allele_ratio) then ("--allele-ratio " +  '"' + allele_ratio + '"') else ""} \
      ~{if defined(cross_mapping_ratio) then ("--cross-mapping-ratio " +  '"' + cross_mapping_ratio + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if (no_perfect_matches) then "--no-perfect-matches" else ""} \
      ~{if defined(d_core_length) then ("--d-core-length " +  '"' + d_core_length + '"') else ""} \
      ~{if defined(d_core) then ("--d-core " +  '"' + d_core + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    database: "FASTA file with reference gene sequences"
    merge: "Merge overlapping genes. Default: Enabled for D,\\ndisabled for J and V."
    no_merge: "Do not merge overlapping genes"
    gene: "Which gene category to discover. Default: J"
    j_coverage: "Require that the sequence covers at least PERCENT of\\nthe J gene. Default: 90 when --gene=J; 0 otherwise"
    allele_ratio: "Required allele ratio. Works only for genes named\\n\\\"NAME*ALLELE\\\". Default: 0.2"
    cross_mapping_ratio: "Ratio for detection of cross-mapping artifacts.\\nDefault: 0.1"
    min_count: "Omit candidates with fewer than N exact occurrences in\\nthe input table. Default: 1 for J; 10 for D; 100 for V"
    no_perfect_matches: "Do not filter out sequences for which the V assignment\\n(or J for --gene=V) has at least one error"
    d_core_length: "Use only D core regions that have at least length L\\n(only applies when --gene=D). Default: 6"
    d_core: "D core region location (only applies when --gene=D).\\nDefault: slice(2, -2, None)"
    fast_a: "Write discovered sequences to FASTA file"
  }
  output {
    File out_stdout = stdout()
  }
}