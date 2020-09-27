version 1.0

task Srasort2 {
  input {
    Boolean? ignore_failure
    Boolean? force
    String? mem_limit
    Int? map_file_b_size
    Int? max_idx_ids
    Int? max_ref_idx_ids
    Int? max_large_idx_ids
    File? mmap_dir
    Boolean? unsorted_old_new
    Boolean? column_md_five
    Boolean? no_column_checksum
    Boolean? blob_crc_three_two
    Boolean? blob_md_five
    Boolean? no_blob_checksum
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String columns
    String quit_dot
    File file_dot
  }
  command <<<
    sra_sort_2 \
      ~{columns} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (ignore_failure) then "--ignore-failure" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(mem_limit) then ("--mem-limit " +  '"' + mem_limit + '"') else ""} \
      ~{if defined(map_file_b_size) then ("--map-file-bsize " +  '"' + map_file_b_size + '"') else ""} \
      ~{if defined(max_idx_ids) then ("--max-idx-ids " +  '"' + max_idx_ids + '"') else ""} \
      ~{if defined(max_ref_idx_ids) then ("--max-ref-idx-ids " +  '"' + max_ref_idx_ids + '"') else ""} \
      ~{if defined(max_large_idx_ids) then ("--max-large-idx-ids " +  '"' + max_large_idx_ids + '"') else ""} \
      ~{if defined(mmap_dir) then ("--mmapdir " +  '"' + mmap_dir + '"') else ""} \
      ~{if (unsorted_old_new) then "--unsorted-old-new" else ""} \
      ~{if (column_md_five) then "--column-md5" else ""} \
      ~{if (no_column_checksum) then "--no-column-checksum" else ""} \
      ~{if (blob_crc_three_two) then "--blob-crc32" else ""} \
      ~{if (blob_md_five) then "--blob-md5" else ""} \
      ~{if (no_blob_checksum) then "--no-blob-checksum" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    ignore_failure: "ignore failure when sorting multiple objects\\ni.e. continue in spite of previous errors"
    force: "force overwrite of existing destination"
    mem_limit: "sets limit on dynamic memory usage"
    map_file_b_size: "sets id map-file cache size"
    max_idx_ids: "sets number of join-index ids to process at\\na time"
    max_ref_idx_ids: "sets number of join-index ids to process\\nwithin REFERENCE table"
    max_large_idx_ids: "sets number of rows to process with large"
    mmap_dir: "sets specific directory to use for\\nmemory-mapped buffers"
    unsorted_old_new: "write old=>new index in unsorted order"
    column_md_five: "generate md5sum compatible checksum files\\nfor each column [default]"
    no_column_checksum: "disable generation of column checksums"
    blob_crc_three_two: "generate CRC32 checksums for each blob\\n[default]"
    blob_md_five: "generate MD5 checksums for each blob"
    no_blob_checksum: "disable generation of blob checksums"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    columns: "--tempdir <path-to-tmp>          sets specific directory to use for "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "sra-sort.2 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}