version 1.0

task Hal2fasta {
  input {
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    Boolean? in_memory
    Int? length
    Int? linewidth
    File? out_f_a_path
    String? sequence
    Int? start
    String in_hal_path
    String genome
  }
  command <<<
    hal2fasta \
      ~{in_hal_path} \
      ~{genome} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(linewidth) then ("--lineWidth " +  '"' + linewidth + '"') else ""} \
      ~{if defined(out_f_a_path) then ("--outFaPath " +  '"' + out_f_a_path + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""}
  >>>
  parameter_meta {
    cache_bytes: ":   maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":     number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":     number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\\n599999]"
    cache_w_zero: ":      w0 parameter fro hdf5 cache [default = 0.75]"
    in_memory: ":             load all data in memory (and disable hdf5 cache) [default =\\n0]"
    length: ":       length of the reference genome (or sequence if specified) to\\nconvert.  If set to 0, the entire thing is converted [default\\n= 0]"
    linewidth: ":    Line width for output [default = 80]"
    out_f_a_path: ":    output fasta file (stdout if none) [default = stdout]"
    sequence: ":     sequence name to export (all sequences by default) [default =\\n\\\"\\\"]"
    start: ":        coordinate within reference genome (or sequence if specified)\\nto start at [default = 0]\\n"
    in_hal_path: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_f_a_path = "${in_out_f_a_path}"
  }
}