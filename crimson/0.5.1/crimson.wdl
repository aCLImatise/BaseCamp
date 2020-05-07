version 1.0

task Crimson {
  input {
    Boolean fmtFmt
    Int indentIndent
    Boolean compactCompact
  }
  command <<<
    crimson \
      ~{true="--fmt" false="" fmtFmt} \
      ~{if defined(indentIndent) then ("--indent " +  '"' + indentIndent + '"') else ""} \
      ~{true="--compact" false="" compactCompact}
  >>>
}