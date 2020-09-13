version 1.0

task Cactus2halpy {
  input {
    String? event
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
  }
  command <<<
    cactus2hal_py \
      ~{if defined(event) then ("--event " +  '"' + event + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""}
  >>>
  parameter_meta {
    event: "root event of the input phylogeny"
    cache_bytes: "maximum size in bytes of regular hdf5 cache"
    cache_mdc: "number of metadata slots in hdf5 cache"
    cacher_dc: "number of regular slots in hdf5 cache"
    cache_w_zero: "w0 parameter for hdf5 cache"
    chunk: "hdf5 chunk size"
    deflate: "hdf5 compression factor"
    in_memory: "keep entire hdf5 arrays in memory, overriding the"
  }
  output {
    File out_stdout = stdout()
  }
}