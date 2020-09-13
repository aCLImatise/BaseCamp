version 1.0

task Hal2chain {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    File? chain_file
    Boolean? in_memory
    Int? length
    Int? max_gap
    String? sequence
    Int? start
    String hal_file
    String genome
  }
  command <<<
    hal2chain \
      ~{hal_file} \
      ~{genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chain_file) then ("--chainFile " +  '"' + chain_file + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_gap) then ("--maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    chain_file: ":    path for output file.  stdout if not specified [default = \\\"\\\"]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    length: ":       maximum length of chain to output. [default = 0]"
    max_gap: ":       maximum indel length to be considered a gap within a chain.\\n[default = 20]"
    sequence: ":     sequence name in query genome (all sequences if not\\nspecified) [default = \\\"\\\"]"
    start: ":        start position in query genome [default = 0]"
    hal_file: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
    File out_chain_file = "${in_chain_file}"
  }
}