version 1.0

task HalSynteny {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Int? max_anchor_distance
    Int? min_block_size
    String? query_chromosome
    String? query_genome
    String? target_genome
    String hal_file
    String out_psl_path
  }
  command <<<
    halSynteny \
      ~{hal_file} \
      ~{out_psl_path} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(max_anchor_distance) then ("--maxAnchorDistance " +  '"' + max_anchor_distance + '"') else ""} \
      ~{if defined(min_block_size) then ("--minBlockSize " +  '"' + min_block_size + '"') else ""} \
      ~{if defined(query_chromosome) then ("--queryChromosome " +  '"' + query_chromosome + '"') else ""} \
      ~{if defined(query_genome) then ("--queryGenome " +  '"' + query_genome + '"') else ""} \
      ~{if defined(target_genome) then ("--targetGenome " +  '"' + target_genome + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":          maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":            number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":            number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":             w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":                    load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    max_anchor_distance: ":   upper bound on distance for syntenic psl blocks\\n[default = 5000]"
    min_block_size: ":        lower bound on synteny block length [default = 5000]"
    query_chromosome: ":     chromosome to infer synteny [default = \\\"\\\"]"
    query_genome: ":         source genome [default = \\\"\\\"]"
    target_genome: ":        reference genome name [default = \\\"\\\"]"
    hal_file: ""
    out_psl_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}