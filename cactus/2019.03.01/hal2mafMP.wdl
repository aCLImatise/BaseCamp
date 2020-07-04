version 1.0

task Hal2mafMP.py {
  input {
    String? num_proc
    String? slice_size
    Boolean? split_by_sequence
    String? small_size
    String? cache_mdc
    String? cacher_dc
    String? cache_bytes
    String? cache_w_zero
    Boolean? in_memory
    String? ref_genome
    String? ref_sequence
    String? ref_targets
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
    hal2mafMP.py \
      ~{hal_file} \
      ~{maf_file} \
      ~{if defined(num_proc) then ("--numProc " +  '"' + num_proc + '"') else ""} \
      ~{if defined(slice_size) then ("--sliceSize " +  '"' + slice_size + '"') else ""} \
      ~{true="--splitBySequence" false="" split_by_sequence} \
      ~{if defined(small_size) then ("--smallSize " +  '"' + small_size + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{true="--inMemory" false="" in_memory} \
      ~{if defined(ref_genome) then ("--refGenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(ref_targets) then ("--refTargets " +  '"' + ref_targets + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(root_genome) then ("--rootGenome " +  '"' + root_genome + '"') else ""} \
      ~{if defined(target_genomes) then ("--targetGenomes " +  '"' + target_genomes + '"') else ""} \
      ~{if defined(max_ref_gap) then ("--maxRefGap " +  '"' + max_ref_gap + '"') else ""} \
      ~{true="--noDupes" false="" no_dupes} \
      ~{true="--noAncestors" false="" no_ancestors} \
      ~{true="--onlySequenceNames" false="" only_sequence_names}
  >>>
  parameter_meta {
    num_proc: "Maximum number of processes to create. If neither --sliceSize or --splitBySequence are specified, then the reference genome will be sliced to require --numProc jobs (default: 1)"
    slice_size: "Maximum slice of reference sequence to process in a single process. (default: None)"
    split_by_sequence: "Create an output MAF for each sequence in the reference genome. Output files will have the format mafFile_sequenceName.maf (default: False)"
    small_size: "If --splitBySequence is used, then all sequences with length less than smallSize will be lumped into a single output MAF called \"mafFile_small.maf\" (default: 0)"
    cache_mdc: "number of metadata slots in hdf5 cache (default: None)"
    cacher_dc: "number of regular slots in hdf5 cache. should be a prime number ~= 10 * DefaultCacheRDCBytes / chunk (default: None)"
    cache_bytes: "maximum size in bytes of regular hdf5 cache (default: None)"
    cache_w_zero: "w0 parameter fro hdf5 cache (default: None)"
    in_memory: "load all data in memory (& disable hdf5 cache) (default: False)"
    ref_genome: "name of reference genome (root if empty) (default: None)"
    ref_sequence: "name of reference sequence within reference genome (all sequences if empty) (default: None)"
    ref_targets: "bed file coordinates of intervals in the reference genome to export (default: None)"
    start: "coordinate within reference genome (or sequence if specified) to start at (default: None)"
    length: "length of the reference genome (or sequence if specified) to convert. If set to 0, the entire thing is converted (default: None)"
    root_genome: "name of root genome (none if empty) (default: None)"
    target_genomes: "comma-separated (no spaces) list of target genomes (others are excluded) (vist all if empty) (default: None)"
    max_ref_gap: "maximum gap length in reference (default: None)"
    no_dupes: "ignore paralogy edges (default: False)"
    no_ancestors: "don't write ancestral sequences. IMPORTANT: Must be used in conjunction with --refGenome to set a non- ancestral genome as the reference because the default reference is the root. (default: False)"
    only_sequence_names: "use sequence names for output names. By default, the UCSC convention of Genome.Sequence is used (default: False)"
    hal_file: "Input HAL file"
    maf_file: "Output MAF file"
  }
}