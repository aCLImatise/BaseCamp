version 1.0

task DriveEmptytrash {
  input {
    Boolean? no_prompt
    Boolean? quiet
  }
  command <<<
    drive emptytrash \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    no_prompt: "shows no prompt before emptying the trash"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}