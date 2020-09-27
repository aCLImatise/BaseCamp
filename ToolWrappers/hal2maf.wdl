version 1.0

task Hal2maf {
  input {
    File? append
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? global
    Boolean? in_memory
    Int? length
    Int? max_block_len
    Int? max_ref_gap
    Boolean? no_ancestors
    Boolean? no_dupes
    Boolean? only_orthologs
    Boolean? only_sequence_names
    Boolean? print_tree
    String? ref_genome
    String? ref_sequence
    File? ref_targets
    String? root_genome
    Int? start
    String? target_genomes
    Boolean? unique
    String hal_file
    String maf_file
  }
  command <<<
    hal2maf \
      ~{hal_file} \
      ~{maf_file} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_block_len) then ("--maxBlockLen " +  '"' + max_block_len + '"') else ""} \
      ~{if defined(max_ref_gap) then ("--maxRefGap " +  '"' + max_ref_gap + '"') else ""} \
      ~{if (no_ancestors) then "--noAncestors" else ""} \
      ~{if (no_dupes) then "--noDupes" else ""} \
      ~{if (only_orthologs) then "--onlyOrthologs" else ""} \
      ~{if (only_sequence_names) then "--onlySequenceNames" else ""} \
      ~{if (print_tree) then "--printTree" else ""} \
      ~{if defined(ref_genome) then ("--refGenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(ref_targets) then ("--refTargets " +  '"' + ref_targets + '"') else ""} \
      ~{if defined(root_genome) then ("--rootGenome " +  '"' + root_genome + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""} \
      ~{if (unique) then "--unique" else ""}
  >>>
  parameter_meta {
    append: ":                      append to instead of overwrite output file. [default =\\n0]"
    cache_bytes: ":          maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":            number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":            number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":             w0 parameter fro hdf5 cache [default = 0.75]"
    global: ":                      output all columns in alignment, ignoring refGenome,\\nrefSequence, etc. flags [default = 0]"
    in_memory: ":                    load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    length: ":              length of the reference genome (or sequence if\\nspecified) to convert.  If set to 0, the entire thing\\nis converted [default = 0]"
    max_block_len: ":         maximum length of MAF block in output [default = 1000]"
    max_ref_gap: ":           maximum gap length in reference [default = 0]"
    no_ancestors: ":                 don't write ancestral sequences. IMPORTANT: Must be\\nused in conjunction with --refGenome to set a\\nnon-ancestral genome as the reference because the\\ndefault reference is the root. [default = 0]"
    no_dupes: ":                     ignore paralogy edges [default = 0]"
    only_orthologs: ":               make only orthologs to the reference appear in the MAF\\nblocks [default = 0]"
    only_sequence_names: ":           use only sequence names for output names.  By default,\\nthe UCSC convention of Genome.Sequence is used"
    print_tree: ":                   print a gene tree for every block [default = 0]"
    ref_genome: ":           name of reference genome (root if empty) [default =\\n\\\"\\\"]"
    ref_sequence: ":         name of reference sequence within reference genome\\n(all sequences if empty) [default = \\\"\\\"]"
    ref_targets: ":          bed file coordinates of intervals in the reference\\ngenome to export (or \\\"stdin\\\" to pipe from standard\\ninput) [default = \\\"\\\"]"
    root_genome: ":          name of root genome (none if empty) [default = \\\"\\\"]"
    start: ":               coordinate within reference genome (or sequence if\\nspecified) to start at [default = 0]"
    target_genomes: ":       comma-separated (no spaces) list of target genomes\\n(others are excluded) (vist all if empty) [default =\\n\\\"\\\"]"
    unique: ":                      only write column whose left-most reference coordinate\\nis in the specified range.  this is used to insure"
    hal_file: ""
    maf_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_append = "${in_append}"
  }
}