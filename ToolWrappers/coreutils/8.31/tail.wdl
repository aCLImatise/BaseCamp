version 1.0

task Tail {
  input {
    Boolean? bytes
    File? follow
    Boolean? same__followname
    Boolean? lines
    Int? max_unchanged_stats
    String? pid
    File? silent
    Boolean? retry
    Float? sleep_interval
    File? verbose
    Boolean? zero_terminated
  }
  command <<<
    tail \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (follow) then "--follow" else ""} \
      ~{if (same__followname) then "-F" else ""} \
      ~{if (lines) then "--lines" else ""} \
      ~{if defined(max_unchanged_stats) then ("--max-unchanged-stats " +  '"' + max_unchanged_stats + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (retry) then "--retry" else ""} \
      ~{if defined(sleep_interval) then ("--sleep-interval " +  '"' + sleep_interval + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bytes: "=[+]NUM       output the last NUM bytes; or use -c +NUM to\\noutput starting with byte NUM of each file"
    follow: "[={name|descriptor}]\\noutput appended data as the file grows;\\nan absent option argument means 'descriptor'"
    same__followname: "same as --follow=name --retry"
    lines: "=[+]NUM       output the last NUM lines, instead of the last 10;\\nor use -n +NUM to output starting with line NUM"
    max_unchanged_stats: "with --follow=name, reopen a FILE which has not\\nchanged size after N (default 5) iterations\\nto see if it has been unlinked or renamed\\n(this is the usual case of rotated log files);\\nwith inotify, this option is rarely useful"
    pid: "with -f, terminate after process ID, PID dies"
    silent: "never output headers giving file names"
    retry: "keep trying to open a file if it is inaccessible"
    sleep_interval: "with -f, sleep for approximately N seconds\\n(default 1.0) between iterations;\\nwith inotify and --pid=P, check process P at\\nleast once every N seconds"
    verbose: "always output headers giving file names"
    zero_terminated: "line delimiter is NUL, not newline"
  }
  output {
    File out_stdout = stdout()
    File out_follow = "${in_follow}"
    File out_silent = "${in_silent}"
    File out_verbose = "${in_verbose}"
  }
}