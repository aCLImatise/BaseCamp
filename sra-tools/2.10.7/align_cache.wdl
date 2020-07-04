version 1.0

task AlignCache.2 {
  input {
    String? threshold
    String? cursor_cache
    String? min_cache_count
    String? xml_log
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String src_db_path
    String new_cache_db_path
  }
  command <<<
    align-cache.2 \
      ~{src_db_path} \
      ~{new_cache_db_path} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(cursor_cache) then ("--cursor-cache " +  '"' + cursor_cache + '"') else ""} \
      ~{if defined(min_cache_count) then ("--min-cache-count " +  '"' + min_cache_count + '"') else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    threshold: "cache PRIMARY_ALIGNMENT records with  difference between values of ALIGN_ID and  MATE_ALIGN_ID >= the value of 'threshold'  option "
    cursor_cache: "the size of the read cursor in Megabytes "
    min_cache_count: "if the number of primary alignment ids in  the src db selected for caching is less  than <min-cache-count>, the cache db will  not be created at all "
    xml_log: "produce XML-formatted log file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    src_db_path: "Path to the database"
    new_cache_db_path: "Path to the new cache database to be created"
  }
}