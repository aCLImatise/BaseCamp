version 1.0

task Tail {
  input {
    Boolean? bytes
    Boolean? follow
    Boolean? same__followname
    Boolean? lines
    String? max_unchanged_stats
    String? pid
    Boolean? silent
    Boolean? retry
    String? sleep_interval
    Boolean? verbose
    Boolean? zero_terminated
    String? option
  }
  command <<<
    tail \
      ~{option} \
      ~{true="--bytes" false="" bytes} \
      ~{true="--follow" false="" follow} \
      ~{true="-F" false="" same__followname} \
      ~{true="--lines" false="" lines} \
      ~{if defined(max_unchanged_stats) then ("--max-unchanged-stats " +  '"' + max_unchanged_stats + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{true="--silent" false="" silent} \
      ~{true="--retry" false="" retry} \
      ~{if defined(sleep_interval) then ("--sleep-interval " +  '"' + sleep_interval + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    bytes: "=[+]NUM       output the last NUM bytes; or use -c +NUM to output starting with byte NUM of each file"
    follow: "[={name|descriptor}] output appended data as the file grows; an absent option argument means 'descriptor'"
    same__followname: "same as --follow=name --retry"
    lines: "=[+]NUM       output the last NUM lines, instead of the last 10; or use -n +NUM to output starting with line NUM"
    max_unchanged_stats: "with --follow=name, reopen a FILE which has not changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log files); with inotify, this option is rarely useful"
    pid: "with -f, terminate after process ID, PID dies"
    silent: "never output headers giving file names"
    retry: "keep trying to open a file if it is inaccessible"
    sleep_interval: "with -f, sleep for approximately N seconds (default 1.0) between iterations; with inotify and --pid=P, check process P at least once every N seconds"
    verbose: "always output headers giving file names"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}