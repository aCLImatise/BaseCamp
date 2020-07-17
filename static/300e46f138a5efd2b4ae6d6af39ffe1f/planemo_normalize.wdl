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
      ~{true="--expand_macros" false="" expand_macros} \
      ~{true="--skip_reorder" false="" skip_reorder} \
      ~{true="--skip_reindent" false="" skip_re_indent}
  >>>
  parameter_meta {
    expand_macros: "Expand macros while normalizing tool XML - useful to see how macros are evaluated."
    skip_reorder: "Planemo will reorder top-level tool blocks according to tool development best practices as part of this command, this flag will disable that behavior."
    skip_re_indent: "Planemo will reindent the XML according to tool development best practices as part of this command, this flag will disable that behavior."
    tool_path: ""
  }
}