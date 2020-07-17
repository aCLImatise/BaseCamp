version 1.0

task BedGraphToBigWig {
  input {
    String? block_size
    String? items_per_slot
    Boolean? unc
    String in_dot_bed_graph
    String chrom_dot_sizes
    String out_dot_bw
  }
  command <<<
    bedGraphToBigWig \
      ~{in_dot_bed_graph} \
      ~{chrom_dot_sizes} \
      ~{out_dot_bw} \
      ~{if defined(block_size) then ("-blockSize " +  '"' + block_size + '"') else ""} \
      ~{if defined(items_per_slot) then ("-itemsPerSlot " +  '"' + items_per_slot + '"') else ""} \
      ~{true="-unc" false="" unc}
  >>>
  parameter_meta {
    block_size: "- Number of items to bundle in r-tree.  Default 256"
    items_per_slot: "- Number of data points bundled at lowest level. Default 1024"
    unc: "- If set, do not use compression."
    in_dot_bed_graph: ""
    chrom_dot_sizes: ""
    out_dot_bw: ""
  }
}