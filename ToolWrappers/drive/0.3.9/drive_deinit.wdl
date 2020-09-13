version 1.0

task DriveDeinit {
  input {
    Boolean? no_prompt
  }
  command <<<
    drive deinit \
      ~{if (no_prompt) then "-no-prompt" else ""}
  >>>
  parameter_meta {
    no_prompt: "disables the prompt\\n"
  }
  output {
    File out_stdout = stdout()
  }
}