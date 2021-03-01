version 1.0

task DriveStar {
  input {
    Boolean? no_prompt
    Boolean? quiet
  }
  command <<<
    drive star \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_prompt: "disables the prompt"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}