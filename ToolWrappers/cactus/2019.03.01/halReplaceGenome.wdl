version 1.0

task HalReplaceGenome {
  input {
    File? bottom_alignment_file
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
    Boolean? no_bottom_alignment
    Boolean? no_mark_ancestors
    Boolean? no_top_alignment
    File? top_alignment_file
    String in_file
    String genome_name
  }
  command <<<
    halReplaceGenome \
      ~{in_file} \
      ~{genome_name} \
      ~{if defined(bottom_alignment_file) then ("--bottomAlignmentFile " +  '"' + bottom_alignment_file + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (no_bottom_alignment) then "--noBottomAlignment" else ""} \
      ~{if (no_mark_ancestors) then "--noMarkAncestors" else ""} \
      ~{if (no_top_alignment) then "--noTopAlignment" else ""} \
      ~{if defined(top_alignment_file) then ("--topAlignmentFile " +  '"' + top_alignment_file + '"') else ""}
  >>>
  parameter_meta {
    bottom_alignment_file: ":   hal file containing an alignment of the genome and\\nits children. Required for non-leaf genomes.\\n[default = \\\"\\\"]"
    cache_bytes: ":            maximum size in bytes of regular hdf5 cache [default\\n= 15728640]"
    cache_mdc: ":              number of metadata slots in hdf5 cache [default =\\n113]"
    cacher_dc: ":              number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":               w0 parameter fro hdf5 cache [default = 0.75]"
    chunk: ":                 hdf5 chunk size [default = 1000]"
    deflate: ":               hdf5 compression factor [0:none - 9:max] [default =\\n2]"
    in_memory: ":                      load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    no_bottom_alignment: ":             remove all bottom segments despite being non-leaf.\\nThis will result in an invalid HAL file, at least\\ntemporarily. [default = 0]"
    no_mark_ancestors: ":               don't mark ancestors for update [default = 0]"
    no_top_alignment: ":                remove all top segments despite being non-root. This\\nwill result in an invalid HAL file, at least"
    top_alignment_file: ":      hal file containing an alignment of the genome, its\\nparent, and its siblings. Required if the genome to\\nbe replaced is not the root. [default = \\\"\\\"]\\n"
    in_file: ""
    genome_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}