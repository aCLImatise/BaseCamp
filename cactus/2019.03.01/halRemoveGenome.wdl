version 1.0

task HalRemoveGenome {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
    Boolean? no_mark_ancestors
    String in_file
    String delete_node
  }
  command <<<
    halRemoveGenome \
      ~{in_file} \
      ~{delete_node} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (no_mark_ancestors) then "--noMarkAncestors" else ""}
  >>>
  parameter_meta {
    cache_bytes: ":        maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":          number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":          number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":           w0 parameter fro hdf5 cache [default = 0.75]"
    chunk: ":             hdf5 chunk size [default = 1000]"
    deflate: ":           hdf5 compression factor [0:none - 9:max] [default = 2]"
    in_memory: ":                  load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    no_mark_ancestors: ":           don't mark ancestors for update [default = 0]"
    in_file: ""
    delete_node: ""
  }
  output {
    File out_stdout = stdout()
  }
}