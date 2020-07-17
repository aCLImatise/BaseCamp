version 1.0

task MergePartitions.py {
  input {
    Boolean? info
    String? k_size
    Boolean? keep_subsets
    Boolean? force
    String graph_base
  }
  command <<<
    merge-partitions.py \
      ~{graph_base} \
      ~{true="--info" false="" info} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{true="--keep-subsets" false="" keep_subsets} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32) (default: 32)"
    keep_subsets: "Keep individual subsets (default: False) (default: True)"
    force: "Overwrite output file if it exists (default: False)"
    graph_base: "basename for input and output files"
  }
}