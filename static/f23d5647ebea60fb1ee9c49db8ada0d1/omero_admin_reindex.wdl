version 1.0

task OmeroAdminReindex {
  input {
    Boolean? jd_wp
    String? mem
    String? batch
    String? merge_factor
    String? ram_buffer_size
    String? lock_factory
    Boolean? prepare
    Boolean? full
    Boolean? events
    String? reset
    Boolean? dry_run
    Boolean? foreground
    Array[String] class
    Boolean? wipe
    Boolean? finish
  }
  command <<<
    omero admin reindex \
      ~{true="--jdwp" false="" jd_wp} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(merge_factor) then ("--merge-factor " +  '"' + merge_factor + '"') else ""} \
      ~{if defined(ram_buffer_size) then ("--ram-buffer-size " +  '"' + ram_buffer_size + '"') else ""} \
      ~{if defined(lock_factory) then ("--lock-factory " +  '"' + lock_factory + '"') else ""} \
      ~{true="--prepare" false="" prepare} \
      ~{true="--full" false="" full} \
      ~{true="--events" false="" events} \
      ~{if defined(reset) then ("--reset " +  '"' + reset + '"') else ""} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--foreground" false="" foreground} \
      ~{if defined(class) then ("--class " +  '"' + class + '"') else ""} \
      ~{true="--wipe" false="" wipe} \
      ~{true="--finish" false="" finish}
  >>>
  parameter_meta {
    jd_wp: "Activate remote debugging"
    mem: "Heap size to use"
    batch: "Number of items to index before reporting status"
    merge_factor: "Higher means merge less frequently. Faster but needs more RAM"
    ram_buffer_size: "Number of MBs to use for the indexing. Higher is faster."
    lock_factory: "Choose Lucene lock factory by class or 'native', 'simple', 'none'"
    prepare: "Disables the background indexer in preparation for indexing"
    full: "Reindexes all non-excluded tables sequentially"
    events: "Reindexes all non-excluded event logs chronologically"
    reset: "Reset the index counter"
    dry_run: "Run through all events, incrementing the counter. NO INDEXING OCCURS"
    foreground: "Run indexer in the foreground"
    class: "Reindexes the given classes sequentially"
    wipe: "Delete the existing index files"
    finish: "Re-enables the background indexer after for indexing"
  }
}