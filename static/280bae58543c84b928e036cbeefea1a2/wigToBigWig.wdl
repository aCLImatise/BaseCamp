version 1.0

task WigToBigWig {
  input {
    String? block_size
    String? items_per_slot
    Boolean? clip
    Boolean? unc
    Boolean? fixed_summaries
    Boolean? keep_all_chromosomes
    String in_do_twig
    String chrom_dot_sizes
    String out_dot_bw
  }
  command <<<
    wigToBigWig \
      ~{in_do_twig} \
      ~{chrom_dot_sizes} \
      ~{out_dot_bw} \
      ~{if defined(block_size) then ("-blockSize " +  '"' + block_size + '"') else ""} \
      ~{if defined(items_per_slot) then ("-itemsPerSlot " +  '"' + items_per_slot + '"') else ""} \
      ~{true="-clip" false="" clip} \
      ~{true="-unc" false="" unc} \
      ~{true="-fixedSummaries" false="" fixed_summaries} \
      ~{true="-keepAllChromosomes" false="" keep_all_chromosomes}
  >>>
  parameter_meta {
    block_size: "- Number of items to bundle in r-tree.  Default 256"
    items_per_slot: "- Number of data points bundled at lowest level. Default 1024"
    clip: "- If set just issue warning messages rather than dying if wig file contains items off end of chromosome or chromosomes that are not in the chrom.sizes file."
    unc: "- If set, do not use compression."
    fixed_summaries: "- If set, use a predefined sequence of summary levels."
    keep_all_chromosomes: "- If set, store all chromosomes in b-tree."
    in_do_twig: ""
    chrom_dot_sizes: ""
    out_dot_bw: ""
  }
}