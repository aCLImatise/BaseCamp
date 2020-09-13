version 1.0

task DriveUntrash {
  input {
    Boolean? hidden
    Boolean? id
    Boolean? matches
    Boolean? quiet
  }
  command <<<
    drive untrash \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    hidden: "allows untrashing hidden paths"
    id: "untrash by id instead of path"
    matches: "search by prefix and untrash"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}