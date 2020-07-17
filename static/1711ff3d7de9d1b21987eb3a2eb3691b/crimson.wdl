version 1.0

task Crimson {
  input {
    Boolean? fmt
    Int? indent
    Boolean? compact
  }
  command <<<
    crimson \
      ~{true="--fmt" false="" fmt} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{true="--compact" false="" compact}
  >>>
  parameter_meta {
    fmt: "[json|yaml]  Output file format. Default: json."
    indent: "Indentation level. Ignored if the --compact flag is set. Default: 2."
    compact: "Whether to create a compact JSON or not. Ignored if output format is YAML."
  }
}