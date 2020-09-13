version 1.0

task HalWiggleLiftover {
  input {
    Boolean? append
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Boolean? no_dupes
    String hal_file
    String src_genome
    String src_wig
    String tgt_genome
    String tg_twig
  }
  command <<<
    halWiggleLiftover \
      ~{hal_file} \
      ~{src_genome} \
      ~{src_wig} \
      ~{tgt_genome} \
      ~{tg_twig} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (no_dupes) then "--noDupes" else ""}
  >>>
  parameter_meta {
    append: ":               append/merge results into tgtWig.  Note that the entire\\ntgtWig file will be loaded into memory then overwritten, so\\nthis data can be lost in event of a crash [default = 0]"
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    no_dupes: ":              do not map between duplications in graph. [default = 0]"
    hal_file: ""
    src_genome: ""
    src_wig: ""
    tgt_genome: ""
    tg_twig: ""
  }
  output {
    File out_stdout = stdout()
  }
}