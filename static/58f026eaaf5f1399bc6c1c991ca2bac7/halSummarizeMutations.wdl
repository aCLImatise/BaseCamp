version 1.0

task HalSummarizeMutations {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Boolean? just_subs
    Int? max_gap
    Int? max_n_fraction
    String? root_genome
    String? target_genomes
    String hal_file
  }
  command <<<
    halSummarizeMutations \
      ~{hal_file} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (just_subs) then "--justSubs" else ""} \
      ~{if defined(max_gap) then ("--maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_n_fraction) then ("--maxNFraction " +  '"' + max_n_fraction + '"') else ""} \
      ~{if defined(root_genome) then ("--rootGenome " +  '"' + root_genome + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ":      maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":        number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":        number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":         w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":                load all data in memory (and disable hdf5 cache) [default\\n= 0]"
    just_subs: ":                just count substitutions.  Note results are total subs\\nbetween genome  and all children, rather than branch\\nresults  when using the normal interface.  For tuning  and\\nperformance checking only [default = 0]"
    max_gap: ":          maximum indel length to be considered a gap.  Gaps  can be\\nnested within other rearrangements. [default = 20]"
    max_n_fraction: ":    maximum fraction of Ns in a rearranged segment for it to\\nnot be ignored as missing data. [default = 1]"
    root_genome: ":      name of root genome (none if empty) [default = \\\"\\\"]"
    target_genomes: ":   comma-separated (no spaces) list of target genomes (others\\nare excluded) (vist all if empty) [default = \\\"\\\"]\\n"
    hal_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}