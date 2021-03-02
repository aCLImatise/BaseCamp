version 1.0

task DriveDel {
  input {
    Boolean? id
    Boolean? matches
    Boolean? no_prompt
    Boolean? quiet
  }
  command <<<
    drive del \
      ~{if (id) then "-id" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "delete by id instead of path"
    matches: "search by prefix and delete"
    no_prompt: "disables the prompt"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}