version 1.0

task HalSetMetadata {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    String? genome
    Boolean? in_memory
    String hal_file
    String key
    String value
  }
  command <<<
    halSetMetadata \
      ~{hal_file} \
      ~{key} \
      ~{value} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""}
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
    genome: ":       genome to set metadata for instead of setting it for the\\nentire alignment [default = ]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]\\n"
    hal_file: ""
    key: ""
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}