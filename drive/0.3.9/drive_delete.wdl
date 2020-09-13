version 1.0

task DriveDelete {
  input {
    Boolean? hidden
    Boolean? id
    Boolean? matches
    Boolean? no_prompt
    Boolean? quiet
  }
  command <<<
    drive delete \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    hidden: "allows trashing hidden paths"
    id: "delete by id instead of path"
    matches: "search by prefix and delete"
    no_prompt: "disables the prompt"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}