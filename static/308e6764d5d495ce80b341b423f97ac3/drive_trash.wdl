version 1.0

task DriveTrash {
  input {
    Boolean? id
    Boolean? matches
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    drive trash \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "trash by id instead of path"
    matches: "search by prefix and trash"
    quiet: "if set, do not log anything but errors"
    verbose: "show step by step information verbosely\\n"
  }
  output {
    File out_stdout = stdout()
  }
}