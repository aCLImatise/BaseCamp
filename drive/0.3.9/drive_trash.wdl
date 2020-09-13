version 1.0

task DriveTrash {
  input {
    Boolean? hidden
    Boolean? id
    Boolean? matches
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    drive trash \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    hidden: "allows trashing hidden paths"
    id: "trash by id instead of path"
    matches: "search by prefix and trash"
    quiet: "if set, do not log anything but errors"
    verbose: "show step by step information verbosely\\n"
  }
  output {
    File out_stdout = stdout()
  }
}