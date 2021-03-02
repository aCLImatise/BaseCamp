version 1.0

task SambambaMarkdup {
  input {
    Boolean? remove_duplicates
    Int? n_threads
    File? compression_level
    Boolean? show_progress
    Directory? tmpdir
    Int? hash_table_size
    Int? overflow_list_size
    Int? sort_buffer_size
    Int? io_buffer_size
    String samba_mba_mark_dup
    String input_dot_bam
  }
  command <<<
    sambamba markdup \
      ~{samba_mba_mark_dup} \
      ~{input_dot_bam} \
      ~{if (remove_duplicates) then "--remove-duplicates" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(hash_table_size) then ("--hash-table-size " +  '"' + hash_table_size + '"') else ""} \
      ~{if defined(overflow_list_size) then ("--overflow-list-size " +  '"' + overflow_list_size + '"') else ""} \
      ~{if defined(sort_buffer_size) then ("--sort-buffer-size " +  '"' + sort_buffer_size + '"') else ""} \
      ~{if defined(io_buffer_size) then ("--io-buffer-size " +  '"' + io_buffer_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    remove_duplicates: "remove duplicates instead of just marking them"
    n_threads: "number of threads to use"
    compression_level: "specify compression level of the resulting file (from 0 to 9)"
    show_progress: "show progressbar in STDERR"
    tmpdir: "specify directory for temporary files"
    hash_table_size: "size of hash table for finding read pairs (default is 262144 reads);\\nwill be rounded down to the nearest power of two;\\nshould be > (average coverage) * (insert size) for good performance"
    overflow_list_size: "size of the overflow list where reads, thrown from the hash table,\\nget a second chance to meet their pairs (default is 200000 reads);\\nincreasing the size reduces the number of temporary files created"
    sort_buffer_size: "total amount of memory (in *megabytes*) used for sorting purposes;\\nthe default is 2048, increasing it will reduce the number of created\\ntemporary files and the time spent in the main thread"
    io_buffer_size: "two buffers of BUFFER_SIZE *megabytes* each are used\\nfor reading and writing BAM during the second pass (default is 128)\\n"
    samba_mba_mark_dup: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}