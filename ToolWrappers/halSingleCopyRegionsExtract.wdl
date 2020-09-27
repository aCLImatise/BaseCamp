version 1.0

task HalSingleCopyRegionsExtract {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
    Int? length
    String? ref_sequence
    Boolean? require_all_targets
    Int? start
    String? target_genomes
    String hal_file
    String reference_genome
  }
  command <<<
    halSingleCopyRegionsExtract \
      ~{hal_file} \
      ~{reference_genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if (require_all_targets) then "--requireAllTargets" else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":          maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":            number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":            number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":             w0 parameter fro hdf5 cache [default = 0.75]"
    chunk: ":               hdf5 chunk size [default = 1000]"
    deflate: ":             hdf5 compression factor [0:none - 9:max] [default = 2]"
    in_memory: ":                    load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    length: ":              length to traverse (default: until end of\\ngenome/sequence) [default = -1]"
    ref_sequence: ":         sequence to traverse [default = ]"
    require_all_targets: ":           require the regions to be present in all target\\ngenomes [default = 0]"
    start: ":               start position within the sequence (within entire\\ngenome if --refSequence is not set) [default = 0]"
    target_genomes: ":       genomes to check for homologous duplicated sites\\n(comma-separated, default=leaves) [default = ]\\n"
    hal_file: ""
    reference_genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}