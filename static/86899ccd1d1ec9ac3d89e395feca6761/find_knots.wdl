version 1.0

task FindKnots.py {
  input {
    Boolean? info
    String? k_size
    String? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Boolean? force
    String graph_base
  }
  command <<<
    find-knots.py \
      ~{graph_base} \
      ~{true="--info" false="" info} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{true="--small-count" false="" small_count} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size to use (default: 32)"
    unique_km_ers: "approximate number of unique kmers in the input set (default: 0)"
    fp_rate: "Override the automatic FP rate setting for the current script (default: None)"
    max_memory_usage: "maximum amount of memory to use for data structure (default: None)"
    small_count: "Reduce memory usage by using a smaller counter for individual kmers. (default: False)"
    force: "Continue past warnings (default: False)"
    graph_base: "Basename for the input and output files."
  }
}