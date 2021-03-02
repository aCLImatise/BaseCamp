version 1.0

task SambambaSort {
  input {
    Int? memory_limit
    Directory? tmpdir
    File? out
    Boolean? sort_by_name
    Boolean? sort_picard
    Boolean? natural_sort
    Boolean? match_mates
    Int? compression_level
    Boolean? uncompressed_chunks
    Boolean? show_progress
    Int? n_threads
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
      ~{if (sort_by_name) then "--sort-by-name" else ""} \
      ~{if (sort_picard) then "--sort-picard" else ""} \
      ~{if (natural_sort) then "--natural-sort" else ""} \
      ~{if (match_mates) then "--match-mates" else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if (uncompressed_chunks) then "--uncompressed-chunks" else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
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
    filter: "keep only reads that satisfy FILTER\\n"
    samba_mba_sort: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}