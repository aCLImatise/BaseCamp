version 1.0

task Kget2109 {
  input {
    Boolean? verbose
    Boolean? quiet
    File? option_file
    Boolean? block_size
    Boolean? show_size
    Boolean? cache
    Boolean? cache_block
    Boolean? proxy
    Boolean? random
    Boolean? repeat
    Boolean? buffer
    Boolean? cache_complete
    Boolean? truncate
    Boolean? start
    Boolean? count
    Boolean? progress
    Boolean? reliable
    Boolean? full
    String quit_dot
    File file_dot
    String order
    Int buffer_size
    String ms
    String timeout
  }
  command <<<
    kget_2_10_9 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{order} \
      ~{buffer_size} \
      ~{ms} \
      ~{timeout} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""} \
      ~{if (block_size) then "--block-size" else ""} \
      ~{if (show_size) then "--show-size" else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if (cache_block) then "--cache-block" else ""} \
      ~{if (proxy) then "--proxy" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (buffer) then "--buffer" else ""} \
      ~{if (cache_complete) then "--cache-complete" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (reliable) then "--reliable" else ""} \
      ~{if (full) then "--full" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    block_size: "how many bytes per block"
    show_size: "query size of remote file first"
    cache: "wrap the remote-file into KCacheTeeFile"
    cache_block: "blocksize inside KCacheTeeFile"
    proxy: "use proxy to download remote file"
    random: "request blocks in random order"
    repeat: "request blocks with repeats if in random"
    buffer: "wrap remote file into KBufFile with this"
    cache_complete: "check completeness on open cacheteefile"
    truncate: "truncate the file 1st parameter\\nremove trailing cache-bitmap"
    start: "offset where to read from"
    count: "number of bytes to read"
    progress: "show progress"
    reliable: "use reliable version of http-file"
    full: "download via one http-request, not partial\\nrequests in loop\\n"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "-b|--verb                        execute verbose "
    order: "-p|--report                      report cache usage "
    buffer_size: "-i|--sleep                       sleep inbetween requests by this amount of "
    ms: "-m|--timeout                     use timed read with tis amount of ms as "
    timeout: "--complete                       check if 1st parameter is complete "
  }
  output {
    File out_stdout = stdout()
  }
}