version 1.0

task HalLiftover {
  input {
    Boolean? append
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    String? coalescence_limit
    Int? in_bed_version
    Boolean? in_memory
    Boolean? keep_extra
    Boolean? no_dupes
    Int? out_bed_version
    Boolean? out_psl
    Boolean? out_psl_with_name
    Boolean? tab
    String hal_file
    String src_genome
    String src_bed
    String tgt_genome
    String tgt_bed
  }
  command <<<
    halLiftover \
      ~{hal_file} \
      ~{src_genome} \
      ~{src_bed} \
      ~{tgt_genome} \
      ~{tgt_bed} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(coalescence_limit) then ("--coalescenceLimit " +  '"' + coalescence_limit + '"') else ""} \
      ~{if defined(in_bed_version) then ("--inBedVersion " +  '"' + in_bed_version + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (keep_extra) then "--keepExtra" else ""} \
      ~{if (no_dupes) then "--noDupes" else ""} \
      ~{if defined(out_bed_version) then ("--outBedVersion " +  '"' + out_bed_version + '"') else ""} \
      ~{if (out_psl) then "--outPSL" else ""} \
      ~{if (out_psl_with_name) then "--outPSLWithName" else ""} \
      ~{if (tab) then "--tab" else ""}
  >>>
  parameter_meta {
    append: ":                     append results to tgtBed [default = 0]"
    cache_bytes: ":         maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":           number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":           number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":            w0 parameter fro hdf5 cache [default = 0.75]"
    coalescence_limit: ":   coalescence limit genome: the genome at or above the\\nMRCA of source and target at which we stop looking for\\nhomologies (default: MRCA) [default = ]"
    in_bed_version: ":       bed version of input file as integer between 3 and 9 or\\n12 reflecting the number of columns (see bed format"
    in_memory: ":                   load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    keep_extra: ":                  keep extra columns. these are columns in the input\\nbeyond the specified or detected bed version, and which\\nare cut by default. [default = 0]"
    no_dupes: ":                    do not map between duplications in graph. [default = 0]"
    out_bed_version: ":      bed version of output file as integer between 3 and 9\\nor 12 reflecting the number of columns (see bed format\\nspecification for more details). Will be same as input\\nby default. [default = 0]"
    out_psl: ":                     write output in PSL instead of bed format. overrides\\n--outBedVersion when specified. [default = 0]"
    out_psl_with_name: ":             write output as input BED name followed by PSL line\\ninstead of bed format. overrides --outBedVersion when\\nspecified. [default = 0]"
    tab: ":                        input is tab-separated. this allows column entries to\\ncontain spaces.  if this flag is not set, both spaces\\nand tabs are used to separate input columns. [default =\\n0]\\n"
    hal_file: ""
    src_genome: ""
    src_bed: ""
    tgt_genome: ""
    tgt_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}