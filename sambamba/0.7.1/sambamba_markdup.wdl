version 1.0

task SambambaMarkdup {
  input {
    Boolean? remove_duplicates
    String? n_threads
    String? compression_level
    Boolean? show_progress
    String? tmpdir
    String? hash_table_size
    String? overflow_list_size
    String? sort_buffer_size
    String? io_buffer_size
    String samba_mba_mark_dup
    String input_dot_bam
  }
  command <<<
    sambamba markdup \
      ~{samba_mba_mark_dup} \
      ~{input_dot_bam} \
      ~{true="--remove-duplicates" false="" remove_duplicates} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{true="--show-progress" false="" show_progress} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(hash_table_size) then ("--hash-table-size " +  '"' + hash_table_size + '"') else ""} \
      ~{if defined(overflow_list_size) then ("--overflow-list-size " +  '"' + overflow_list_size + '"') else ""} \
      ~{if defined(sort_buffer_size) then ("--sort-buffer-size " +  '"' + sort_buffer_size + '"') else ""} \
      ~{if defined(io_buffer_size) then ("--io-buffer-size " +  '"' + io_buffer_size + '"') else ""}
  >>>
  parameter_meta {
    remove_duplicates: "remove duplicates instead of just marking them"
    n_threads: "number of threads to use"
    compression_level: "specify compression level of the resulting file (from 0 to 9)"
    show_progress: "show progressbar in STDERR"
    tmpdir: "specify directory for temporary files"
    hash_table_size: "size of hash table for finding read pairs (default is 262144 reads); will be rounded down to the nearest power of two; should be > (average coverage) * (insert size) for good performance"
    overflow_list_size: "size of the overflow list where reads, thrown from the hash table, get a second chance to meet their pairs (default is 200000 reads); increasing the size reduces the number of temporary files created"
    sort_buffer_size: "total amount of memory (in *megabytes*) used for sorting purposes; the default is 2048, increasing it will reduce the number of created temporary files and the time spent in the main thread"
    io_buffer_size: "two buffers of BUFFER_SIZE *megabytes* each are used for reading and writing BAM during the second pass (default is 128)"
    samba_mba_mark_dup: ""
    input_dot_bam: ""
  }
}