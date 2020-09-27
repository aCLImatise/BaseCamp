version 1.0

task HalMaskExtract {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? extend
    Int? extend_pct
    Boolean? in_memory
    File? mask_file
    String hal_file
    String genome
  }
  command <<<
    halMaskExtract \
      ~{hal_file} \
      ~{genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(extend_pct) then ("--extendPct " +  '"' + extend_pct + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(mask_file) then ("--maskFile " +  '"' + mask_file + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    extend: ":       extend masked regions by given num. of bases. [default = 0]"
    extend_pct: ":    extend masked regions by percentage of their lengths [default\\n= 0]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    mask_file: ":     path to bed file to write to [default = stdout]"
    hal_file: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}