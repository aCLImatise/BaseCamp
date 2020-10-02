version 1.0

task DriveTouch {
  input {
    Int? depth
    File? duration
    Int? format
  }
  command <<<
    drive touch \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if defined(duration) then ("-duration " +  '"' + duration + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    depth: "max traversal depth (default -1)"
    duration: "the duration offset from now that each file's modification time should be set to e.g -32h"
    format: "the custom layout that you'd like your time to be set in, representative of the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented"
  }
  output {
    File out_stdout = stdout()
  }
}