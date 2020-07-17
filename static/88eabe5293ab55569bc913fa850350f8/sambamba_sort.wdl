version 1.0

task SambambaSort {
  input {
    String? memory_limit
    String? tmpdir
    String? out
    Boolean? sort_by_name
    Boolean? sort_picard
    Boolean? natural_sort
    Boolean? match_mates
    String? compression_level
    Boolean? uncompressed_chunks
    Boolean? show_progress
    String? n_threads
    String? filter
    String samba_mba_sort
    String input_dot_bam
  }
  command <<<
    sambamba sort \
      ~{samba_mba_sort} \
      ~{input_dot_bam} \
      ~{if defined(memory_limit) then ("--memory-limit " +  '"' + memory_limit + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--sort-by-name" false="" sort_by_name} \
      ~{true="--sort-picard" false="" sort_picard} \
      ~{true="--natural-sort" false="" natural_sort} \
      ~{true="--match-mates" false="" match_mates} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{true="--uncompressed-chunks" false="" uncompressed_chunks} \
      ~{true="--show-progress" false="" show_progress} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    memory_limit: "approximate total memory limit for all threads (by default 2GB)"
    tmpdir: "directory for storing intermediate files; default is system directory for temporary files"
    out: "output file name; if not provided, the result is written to a file with .sorted.bam extension"
    sort_by_name: "sort by read name instead of coordinate (lexicographical order)"
    sort_picard: "sort by query name like in picard"
    natural_sort: "sort by read name instead of coordinate (so-called 'natural' sort as in samtools)"
    match_mates: "pull mates of the same alignment together when sorting by read name"
    compression_level: "level of compression for sorted BAM, from 0 to 9"
    uncompressed_chunks: "write sorted chunks as uncompressed BAM (default is writing with compression level 1), that might be faster in some cases but uses more disk space"
    show_progress: "show progressbar in STDERR"
    n_threads: "use specified number of threads"
    filter: "keep only reads that satisfy FILTER"
    samba_mba_sort: ""
    input_dot_bam: ""
  }
}