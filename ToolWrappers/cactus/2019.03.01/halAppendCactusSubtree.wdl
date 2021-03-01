version 1.0

task HalAppendCactusSubtree {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
    String? out_groups
    File cactus_dot_ctw_oh_file
    File cactus_dot_fa_file
    String newick_tree
    File output_hal_path
  }
  command <<<
    halAppendCactusSubtree \
      ~{cactus_dot_ctw_oh_file} \
      ~{cactus_dot_fa_file} \
      ~{newick_tree} \
      ~{output_hal_path} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(out_groups) then ("--outgroups " +  '"' + out_groups + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    chunk: ":        hdf5 chunk size [default = 1000]"
    deflate: ":      hdf5 compression factor [0:none - 9:max] [default = 2]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    out_groups: ":    comma-separated list of outgroup events which will be skipped\\nby the conversion. [default = \\\"\\\"]\\n"
    cactus_dot_ctw_oh_file: ""
    cactus_dot_fa_file: ""
    newick_tree: ""
    output_hal_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_hal_path = "${in_output_hal_path}"
  }
}