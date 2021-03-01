version 1.0

task HalSnps {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Int? length
    Int? min_species_for_snp
    Boolean? no_dupes
    String? ref_sequence
    Int? start
    File? tsv
    Boolean? unique
    String hal_file
    String ref_genome
    String target_genomes
  }
  command <<<
    halSnps \
      ~{hal_file} \
      ~{ref_genome} \
      ~{target_genomes} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(min_species_for_snp) then ("--minSpeciesForSnp " +  '"' + min_species_for_snp + '"') else ""} \
      ~{if (no_dupes) then "--noDupes" else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if (unique) then "--unique" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ":         maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":           number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":           number of regular slots in hdf5 cache.  should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n[default = 599999]"
    cache_w_zero: ":            w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":                   load all data in memory (and disable hdf5 cache)\\n[default = 0]"
    length: ":             length of the reference genome (or sequence if\\nspecified) to convert.  If set to 0, the entire thing\\nis converted [default = 0]"
    min_species_for_snp: ":   minimum number of species that must have a different\\nbase than the reference for a SNP to be reported in the\\nTSV [default = 1]"
    no_dupes: ":                    do not consider paralogies while mapping [default = 0]"
    ref_sequence: ":        name of reference sequence within reference genome (all\\nsequences if empty) [default = \\\"\\\"]"
    start: ":              coordinate within reference genome (or sequence if\\nspecified) to start at [default = 0]"
    tsv: ":                path of tsv file to write snps to in reference genome\\ncoordinates, and containing the base assignments for\\neach genome [default = \\\"\\\"]"
    unique: ":                     Whether to ignore columns that are not canonical on the\\nreference genome [default = 0]\\n"
    hal_file: ""
    ref_genome: ""
    target_genomes: ""
  }
  output {
    File out_stdout = stdout()
  }
}