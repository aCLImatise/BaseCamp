version 1.0

task CleanRunsh {
  input {
    Boolean? always_prompt_removing
    Boolean? never_prompt
    Boolean? recurse
    Boolean? irf
    String rm
    File file_dot_dot_dot
  }
  command <<<
    clean_run_sh \
      ~{rm} \
      ~{file_dot_dot_dot} \
      ~{if (always_prompt_removing) then "-i" else ""} \
      ~{if (never_prompt) then "-f" else ""} \
      ~{if (recurse) then "-R" else ""} \
      ~{if (irf) then "-irf" else ""}
  >>>
  parameter_meta {
    always_prompt_removing: "Always prompt before removing"
    never_prompt: "Never prompt"
    recurse: "Recurse"
    irf: ""
    rm: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}