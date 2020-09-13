version 1.0

task Aligncache {
  input {
    String? threshold
    Int? cursor_cache
    Int? min_cache_count
    File? xml_log
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File src_db_path
    File new_cache_db_path
    String quit_dot
    File file_dot
  }
  command <<<
    align_cache \
      ~{src_db_path} \
      ~{new_cache_db_path} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(cursor_cache) then ("--cursor-cache " +  '"' + cursor_cache + '"') else ""} \
      ~{if defined(min_cache_count) then ("--min-cache-count " +  '"' + min_cache_count + '"') else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    threshold: "cache PRIMARY_ALIGNMENT records with\\ndifference between values of ALIGN_ID and\\nMATE_ALIGN_ID >= the value of 'threshold'\\noption"
    cursor_cache: "the size of the read cursor in Megabytes"
    min_cache_count: "if the number of primary alignment ids in\\nthe src db selected for caching is less\\nthan <min-cache-count>, the cache db will\\nnot be created at all"
    xml_log: "produce XML-formatted log file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    src_db_path: "Path to the database"
    new_cache_db_path: "Path to the new cache database to be created"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "align-cache : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}