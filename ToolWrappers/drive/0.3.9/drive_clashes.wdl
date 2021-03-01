version 1.0

task DriveClashes {
  input {
    Int? depth
    Boolean? fix
    String? fix_mode
    Boolean? id
    Boolean? list
    Boolean? no_prompt
  }
  command <<<
    drive clashes \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (fix) then "-fix" else ""} \
      ~{if defined(fix_mode) then ("-fix-mode " +  '"' + fix_mode + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (list) then "-list" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "maximum recursion depth (default -1)"
    fix: "fix clashes by renaming or trashing files"
    fix_mode: "set fix policy to rename or trash (default \\\"rename\\\")"
    id: "operate on clashes by id instead of by path"
    list: "list clashes (default true)"
    no_prompt: "shows no prompt before fixing clashes\\n"
  }
  output {
    File out_stdout = stdout()
  }
}