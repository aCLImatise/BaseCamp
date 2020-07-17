version 1.0

task SgaGraphDiff {
  input {
    Boolean? verbose
    String? prefix
    String? threads
    String? genome_size
    String? pre_cache_reference
    File? variant
    File? base
    File? reference
    String? km_er
    String? min_discovery_count
    String? algorithm
    String? min_overlap
    String? min_dbg_count
    String? ref
    String? option
  }
  command <<<
    sga graph-diff \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(pre_cache_reference) then ("--precache-reference " +  '"' + pre_cache_reference + '"') else ""} \
      ~{if defined(variant) then ("--variant " +  '"' + variant + '"') else ""} \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_discovery_count) then ("--min-discovery-count " +  '"' + min_discovery_count + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(min_dbg_count) then ("--min-dbg-count " +  '"' + min_dbg_count + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "prefix the output files with NAME"
    threads: "use NUM computation threads"
    genome_size: "(optional) set the size of the genome to be N bases this is used to determine the number of bits to use in the bloom filter if unset, it will be calculated from the reference genome FASTA file"
    pre_cache_reference: "precache the named chromosome of the reference genome If STR is \"all\" the entire reference will be cached"
    variant: "call variants present in the read set in FILE"
    base: "use the read set in FILE as the base line for comparison if this option is not given, reference-based calls will be made"
    reference: "use the reference sequence in FILE"
    km_er: "use K-mers to discover variants"
    min_discovery_count: "require a variant k-mer to be seen at least T times"
    algorithm: "select the assembly algorithm to use from: debruijn, string"
    min_overlap: "require at least N bp overlap when assembling using a string graph"
    min_dbg_count: "only use k-mers seen T times when assembling using a de Bruijn graph"
    ref: ""
    option: ""
  }
}