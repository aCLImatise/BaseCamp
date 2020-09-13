version 1.0

task DriveUnstar {
  input {
    Boolean? id
    Boolean? no_prompt
    Boolean? quiet
  }
  command <<<
    drive unstar \
      ~{if (id) then "-id" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    id: "open by id instead of path"
    no_prompt: "disables the prompt"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}