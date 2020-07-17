version 1.0

task SraSort.2 {
  input {
    Boolean? ignore_failure
    Boolean? force
    String? mem_limit
    String? map_file_b_size
    String? max_idx_ids
    String? max_ref_idx_ids
    String? max_large_idx_ids
    File? tempdir
    File? mmap_dir
    Boolean? unsorted_old_new
    Boolean? column_md_five
    Boolean? no_column_checksum
    Boolean? blob_crc_three_two
    Boolean? blob_md_five
    Boolean? no_blob_checksum
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String src_object
    String dst_object
  }
  command <<<
    sra-sort.2 \
      ~{src_object} \
      ~{dst_object} \
      ~{true="--ignore-failure" false="" ignore_failure} \
      ~{true="--force" false="" force} \
      ~{if defined(mem_limit) then ("--mem-limit " +  '"' + mem_limit + '"') else ""} \
      ~{if defined(map_file_b_size) then ("--map-file-bsize " +  '"' + map_file_b_size + '"') else ""} \
      ~{if defined(max_idx_ids) then ("--max-idx-ids " +  '"' + max_idx_ids + '"') else ""} \
      ~{if defined(max_ref_idx_ids) then ("--max-ref-idx-ids " +  '"' + max_ref_idx_ids + '"') else ""} \
      ~{if defined(max_large_idx_ids) then ("--max-large-idx-ids " +  '"' + max_large_idx_ids + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(mmap_dir) then ("--mmapdir " +  '"' + mmap_dir + '"') else ""} \
      ~{true="--unsorted-old-new" false="" unsorted_old_new} \
      ~{true="--column-md5" false="" column_md_five} \
      ~{true="--no-column-checksum" false="" no_column_checksum} \
      ~{true="--blob-crc32" false="" blob_crc_three_two} \
      ~{true="--blob-md5" false="" blob_md_five} \
      ~{true="--no-blob-checksum" false="" no_blob_checksum} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    ignore_failure: "ignore failure when sorting multiple objects  i.e. continue in spite of previous errors "
    force: "force overwrite of existing destination "
    mem_limit: "sets limit on dynamic memory usage "
    map_file_b_size: "sets id map-file cache size "
    max_idx_ids: "sets number of join-index ids to process at  a time "
    max_ref_idx_ids: "sets number of join-index ids to process  within REFERENCE table "
    max_large_idx_ids: "sets number of rows to process with large  columns "
    tempdir: "sets specific directory to use for  temporary files "
    mmap_dir: "sets specific directory to use for  memory-mapped buffers "
    unsorted_old_new: "write old=>new index in unsorted order "
    column_md_five: "generate md5sum compatible checksum files  for each column [default] "
    no_column_checksum: "disable generation of column checksums "
    blob_crc_three_two: "generate CRC32 checksums for each blob  [default] "
    blob_md_five: "generate MD5 checksums for each blob "
    no_blob_checksum: "disable generation of blob checksums "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    src_object: ""
    dst_object: ""
  }
}