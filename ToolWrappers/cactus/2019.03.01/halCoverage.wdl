version 1.0

task HalCoverage {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Int? num_samples
    Int? seed
    String hal_file
    String ref_genome
  }
  command <<<
    halCoverage \
      ~{hal_file} \
      ~{ref_genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(num_samples) then ("--numSamples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    num_samples: ":   Number of bases to sample when calculating coverage [default\\n= 1000000]"
    seed: ":         Random seed (integer) [default = 0]"
    hal_file: ""
    ref_genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}