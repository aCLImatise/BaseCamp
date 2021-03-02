version 1.0

task DriveTouch {
  input {
    Int? depth
    File? duration
    Int? format
    Boolean? id
    Boolean? matches
    Boolean? quiet
    Boolean? recursive
    File? time
    Boolean? verbose
  }
  command <<<
    drive touch \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if defined(duration) then ("-duration " +  '"' + duration + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "max traversal depth (default -1)"
    duration: "the duration offset from now that each file's modification time should be set to e.g -32h"
    format: "the custom layout that you'd like your time to be set in, representative of the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented"
    id: "share by id instead of path"
    matches: "search by prefix and touch"
    quiet: "if set, do not log anything but errors"
    recursive: "toggles recursive touching"
    time: "the time each file's modification time should be set to"
    verbose: "show step by step information verbosely (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}