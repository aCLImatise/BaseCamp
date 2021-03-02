version 1.0

task HalLodExtract {
  input {
    Boolean? all_sequences
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Int? chunk
    Int? deflate
    Boolean? in_memory
    File? keep_sequences
    Int? min_seq_frac
    File? out_tree
    Float? probe_frac
    String? root
    String in_hal_path
    String out_hal_path
    String scale
  }
  command <<<
    halLodExtract \
      ~{in_hal_path} \
      ~{out_hal_path} \
      ~{scale} \
      ~{if (all_sequences) then "--allSequences" else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(deflate) then ("--deflate " +  '"' + deflate + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if (keep_sequences) then "--keepSequences" else ""} \
      ~{if defined(min_seq_frac) then ("--minSeqFrac " +  '"' + min_seq_frac + '"') else ""} \
      ~{if defined(out_tree) then ("--outTree " +  '"' + out_tree + '"') else ""} \
      ~{if defined(probe_frac) then ("--probeFrac " +  '"' + probe_frac + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_sequences: ":            Sample all sequences (chromsomes / contigs / etc.) no\\nmatter how small they are.  By default, small sequences\\nmay be skipped if they fall within the step size. [default\\n= 0]"
    cache_bytes: ":      maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":        number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":        number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":         w0 parameter fro hdf5 cache [default = 0.75]"
    chunk: ":           hdf5 chunk size [default = 1000]"
    deflate: ":         hdf5 compression factor [0:none - 9:max] [default = 2]"
    in_memory: ":                load all data in memory (and disable hdf5 cache) [default\\n= 0]"
    keep_sequences: ":           Write the sequence strings to the output file. [default =\\n0]"
    min_seq_frac: ":      Minumum sequence length to sample as fraction of step\\nsize: ie sequences with length <= floor(minSeqFrac * step)\\nare ignored. [default = 0.5]"
    out_tree: ":         Phylogenetic tree of output HAL file.  Must contain only\\ngenomes from the input HAL file. (input's tree used if\\nempty) [default = \\\"\\\"]"
    probe_frac: ":       Fraction of bases in step-interval to sample while looking\\nfor most aligned column. [default = 0.035]"
    root: ":            Name of root genome of tree to extract (root if empty)\\n[default = \\\"\\\"]\\n"
    in_hal_path: ""
    out_hal_path: ""
    scale: ""
  }
  output {
    File out_stdout = stdout()
    File out_keep_sequences = "${in_keep_sequences}"
  }
}