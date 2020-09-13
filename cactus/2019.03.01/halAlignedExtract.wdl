version 1.0

task HalAlignedExtract {
  input {
    File? aligned_file
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? complement
    Boolean? in_memory
    String hal_path
    String genome
  }
  command <<<
    halAlignedExtract \
      ~{hal_path} \
      ~{genome} \
      ~{if defined(aligned_file) then ("--alignedFile " +  '"' + aligned_file + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (in_memory) then "--inMemory" else ""}
  >>>
  parameter_meta {
    aligned_file: ":   path to bed file to write to [default = stdout]"
    cache_bytes: ":    maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":      number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":      number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":       w0 parameter fro hdf5 cache [default = 0.75]"
    complement: ":            extract the regions of the genome that are *unaligned* to\\nthe parent. ie all intervals that are not returned with the\\ndefault setting. [default = 0]"
    in_memory: ":              load all data in memory (and disable hdf5 cache) [default =\\n0]\\n"
    hal_path: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}