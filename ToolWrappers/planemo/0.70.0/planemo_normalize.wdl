version 1.0

task PlanemoNormalize {
  input {
    Boolean? expand_macros
    Boolean? skip_reorder
    Boolean? skip_re_indent
    String tool_path
  }
  command <<<
    planemo normalize \
      ~{tool_path} \
      ~{if (expand_macros) then "--expand_macros" else ""} \
      ~{if (skip_reorder) then "--skip_reorder" else ""} \
      ~{if (skip_re_indent) then "--skip_reindent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    expand_macros: "Expand macros while normalizing tool XML - useful to see\\nhow macros are evaluated."
    skip_reorder: "Planemo will reorder top-level tool blocks according to\\ntool development best practices as part of this command,\\nthis flag will disable that behavior."
    skip_re_indent: "Planemo will reindent the XML according to tool development\\nbest practices as part of this command, this flag will\\ndisable that behavior."
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}