version 1.0

task PlncproFormatFfsh {
  input {
    Boolean? do_prompt_overwriting
    Boolean? interactive_prompt_overwrite
    Boolean? overwrite_existing_file
    Boolean? fin
    String mv
    String source
    String dest
  }
  command <<<
    plncpro_format_ff_sh \
      ~{mv} \
      ~{source} \
      ~{dest} \
      ~{if (do_prompt_overwriting) then "-f" else ""} \
      ~{if (interactive_prompt_overwrite) then "-i" else ""} \
      ~{if (overwrite_existing_file) then "-n" else ""} \
      ~{if (fin) then "-fin" else ""}
  >>>
  parameter_meta {
    do_prompt_overwriting: "Don't prompt before overwriting"
    interactive_prompt_overwrite: "Interactive, prompt before overwrite"
    overwrite_existing_file: "Don't overwrite an existing file"
    fin: ""
    mv: ""
    source: ""
    dest: ""
  }
  output {
    File out_stdout = stdout()
  }
}