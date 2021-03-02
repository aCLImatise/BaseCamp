version 1.0

task Hal4dExtract {
  input {
    File? append
    File? bed_version
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? conserved
    Boolean? in_memory
    String hal_path
    String ref_genome
    String in_bed
    String out_bed
  }
  command <<<
    hal4dExtract \
      ~{hal_path} \
      ~{ref_genome} \
      ~{in_bed} \
      ~{out_bed} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(bed_version) then ("--bedVersion " +  '"' + bed_version + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (conserved) then "--conserved" else ""} \
      ~{if (in_memory) then "--inMemory" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    append: ":               append to instead of overwrite output file. [default = 0]"
    bed_version: ":   version of input bed file.  will be automatically detected if\\nnot specified [default = -1]"
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    conserved: ":            ensure 4d sites are 4d sites in all leaf genomes [default =\\n0]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]\\n"
    hal_path: ""
    ref_genome: ""
    in_bed: ""
    out_bed: ""
  }
  output {
    File out_stdout = stdout()
    File out_append = "${in_append}"
  }
}