version 1.0

task HalBranchMutations {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    File? del_break_file
    Boolean? in_memory
    Int? length
    Int? max_gap
    Int? max_n_fraction
    File? parent_file
    File? ref_file
    String? ref_sequence
    File? ref_targets
    File? snp_file
    Int? start
    String parent_dot
  }
  command <<<
    halBranchMutations \
      ~{parent_dot} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(del_break_file) then ("--delBreakFile " +  '"' + del_break_file + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_gap) then ("--maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_n_fraction) then ("--maxNFraction " +  '"' + max_n_fraction + '"') else ""} \
      ~{if defined(parent_file) then ("--parentFile " +  '"' + parent_file + '"') else ""} \
      ~{if defined(ref_file) then ("--refFile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(ref_targets) then ("--refTargets " +  '"' + ref_targets + '"') else ""} \
      ~{if defined(snp_file) then ("--snpFile " +  '"' + snp_file + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_bytes: ":     maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":       number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":       number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":        w0 parameter fro hdf5 cache [default = 0.75]"
    del_break_file: ":   bed file write deletion breakpoints to in reference genome\\ncoordinates (or stdout) [default = \\\"\\\"]"
    in_memory: ":               load all data in memory (and disable hdf5 cache) [default =\\n0]"
    length: ":         length of the reference genome (or sequence if specified)\\nto convert.  If set to 0, the entire thing is converted\\n[default = 0]"
    max_gap: ":         maximum indel length to be considered a gap.  Gaps  can be\\nnested within other rearrangements. [default = 20]"
    max_n_fraction: ":   maximum fraction of Ns in a rearranged segment for it to\\nnot be ignored as missing data. [default = 1]"
    parent_file: ":     bed file to write rearrangements (deletions and\\nduplications) in reference's parent genome coordinates (or\\nstdout) [default = \\\"\\\"]"
    ref_file: ":        bed file to write structural rearrangements in reference\\ngenome coordinates (or stdout) [default = \\\"\\\"]"
    ref_sequence: ":    name of reference sequence within reference genome (all\\nsequences if empty) [default = \\\"\\\"]"
    ref_targets: ":     bed file coordinates of intervals in the reference genome\\nto analyze [default = \\\"\\\"]"
    snp_file: ":        bed file write point mutations to in reference genome\\ncoordinates (or stdout) [default = \\\"\\\"]"
    start: ":          coordinate within reference genome (or sequence if\\nspecified) to start at [default = 0]\\n"
    parent_dot: "USAGE:"
  }
  output {
    File out_stdout = stdout()
  }
}