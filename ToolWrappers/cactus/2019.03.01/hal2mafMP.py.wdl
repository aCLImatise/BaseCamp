version 1.0

task Hal2mafMPpy {
  input {
    Int? num_proc
    String? split_by_sequence
    Int? small_size
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_bytes
    Int? cache_w_zero
    Boolean? in_memory
    String? ref_genome
    String? ref_sequence
    File? ref_targets
    String? start
    Int? length
    String? root_genome
    String? target_genomes
    Int? max_ref_gap
    Boolean? no_dupes
    Boolean? no_ancestors
    Boolean? only_sequence_names
    String hal_file
    String maf_file
  }
  command <<<
    hal2mafMP_py \
      ~{hal_file} \
      ~{maf_file} \
      ~{if defined(num_proc) then ("--numProc " +  '"' + num_proc + '"') else ""} \
      ~{if defined(split_by_sequence) then ("--splitBySequence " +  '"' + split_by_sequence + '"') else ""} \
      ~{if defined(small_size) then ("--smallSize " +  '"' + small_size + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(ref_genome) then ("--refGenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(ref_targets) then ("--refTargets " +  '"' + ref_targets + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(root_genome) then ("--rootGenome " +  '"' + root_genome + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""} \
      ~{if defined(max_ref_gap) then ("--maxRefGap " +  '"' + max_ref_gap + '"') else ""} \
      ~{if (no_dupes) then "--noDupes" else ""} \
      ~{if (no_ancestors) then "--noAncestors" else ""} \
      ~{if (only_sequence_names) then "--onlySequenceNames" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_proc: "Maximum number of processes to create. If neither"
    split_by_sequence: "specified, then"
    small_size: "If --splitBySequence is used, then all sequences with\\nlength less than smallSize will be lumped into a\\nsingle output MAF called \\\"mafFile_small.maf\\\" (default:\\n0)"
    cache_mdc: "number of metadata slots in hdf5 cache (default: None)"
    cacher_dc: "number of regular slots in hdf5 cache. should be a\\nprime number ~= 10 * DefaultCacheRDCBytes / chunk\\n(default: None)"
    cache_bytes: "maximum size in bytes of regular hdf5 cache (default:\\nNone)"
    cache_w_zero: "w0 parameter fro hdf5 cache (default: None)"
    in_memory: "load all data in memory (& disable hdf5 cache)\\n(default: False)"
    ref_genome: "name of reference genome (root if empty) (default:\\nNone)"
    ref_sequence: "name of reference sequence within reference genome\\n(all sequences if empty) (default: None)"
    ref_targets: "bed file coordinates of intervals in the reference\\ngenome to export (default: None)"
    start: "coordinate within reference genome (or sequence if\\nspecified) to start at (default: None)"
    length: "length of the reference genome (or sequence if\\nspecified) to convert. If set to 0, the entire thing\\nis converted (default: None)"
    root_genome: "name of root genome (none if empty) (default: None)"
    target_genomes: "comma-separated (no spaces) list of target genomes\\n(others are excluded) (vist all if empty) (default:\\nNone)"
    max_ref_gap: "maximum gap length in reference (default: None)"
    no_dupes: "ignore paralogy edges (default: False)"
    no_ancestors: "don't write ancestral sequences. IMPORTANT: Must be\\nused in conjunction with --refGenome to set a non-\\nancestral genome as the reference because the default\\nreference is the root. (default: False)"
    only_sequence_names: "use sequence names for output names. By default, the\\nUCSC convention of Genome.Sequence is used (default:\\nFalse)\\n"
    hal_file: "Input HAL file"
    maf_file: "Output MAF file"
  }
  output {
    File out_stdout = stdout()
  }
}