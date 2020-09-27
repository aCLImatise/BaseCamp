version 1.0

task HalAlignmentDepth {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? count_dupes
    Boolean? in_memory
    Int? length
    Boolean? no_ancestors
    File? out_wiggle
    String? ref_sequence
    String? root_genome
    Int? start
    Int? step
    String? target_genomes
    String hal_path
    String ref_genome
  }
  command <<<
    halAlignmentDepth \
      ~{hal_path} \
      ~{ref_genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (count_dupes) then "--countDupes" else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (no_ancestors) then "--noAncestors" else ""} \
      ~{if defined(out_wiggle) then ("--outWiggle " +  '"' + out_wiggle + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(root_genome) then ("--rootGenome " +  '"' + root_genome + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":      maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":        number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":        number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":         w0 parameter fro hdf5 cache [default = 0.75]"
    count_dupes: ":              count each other *position* each base aligns to, rather\\nthan the number of unique genomes, including paralogies so\\na genome can be counted  multiple times.  This will give\\nthe height of the MAF column created with hal2maf.\\n[default = 0]"
    in_memory: ":                load all data in memory (and disable hdf5 cache) [default\\n= 0]"
    length: ":          length of the reference genome (or sequence if specified)\\nto convert.  If set to 0, the entire thing is converted\\n[default = 0]"
    no_ancestors: ":             do not count ancestral genomes. [default = 0]"
    out_wiggle: ":       output wig file (stdout if none) [default = stdout]"
    ref_sequence: ":     sequence name to export (all sequences by default)\\n[default = \\\"\\\"]"
    root_genome: ":      name of root genome (none if empty) [default = \\\"\\\"]"
    start: ":           coordinate within reference genome (or sequence if\\nspecified) to start at [default = 0]"
    step: ":            step size [default = 1]"
    target_genomes: ":   comma-separated (no spaces) list of target genomes (others\\nare excluded) (vist all if empty) [default = \\\"\\\"]\\n"
    hal_path: ""
    ref_genome: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_wiggle = "${in_out_wiggle}"
  }
}