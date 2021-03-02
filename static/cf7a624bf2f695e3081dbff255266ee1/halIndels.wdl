version 1.0

task HalIndels {
  input {
    Int? adjacent_bases
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Boolean? only_extant_targets
    String hal_file
    String ref_genome
  }
  command <<<
    halIndels \
      ~{hal_file} \
      ~{ref_genome} \
      ~{if defined(adjacent_bases) then ("--adjacentBases " +  '"' + adjacent_bases + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (only_extant_targets) then "--onlyExtantTargets" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    adjacent_bases: ":       # of adjacent bases to examine while filtering\\n[default = 5]"
    cache_bytes: ":          maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":            number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":            number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":             w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":                    load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    only_extant_targets: ":           Use only extant genomes for 'sibling'/outgroup\\n[default = 0]\\n"
    hal_file: ""
    ref_genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}