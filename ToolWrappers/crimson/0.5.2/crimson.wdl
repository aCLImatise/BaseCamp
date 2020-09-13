version 1.0

task Crimson {
  input {
    File? fmt
    Int? indent
    Boolean? compact
  }
  command <<<
    crimson \
      ~{if (fmt) then "--fmt" else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (compact) then "--compact" else ""}
  >>>
  parameter_meta {
    fmt: "[json|yaml]  Output file format. Default: json."
    indent: "Indentation level. Ignored if the --compact flag is set.\\nDefault: 2."
    compact: "Whether to create a compact JSON or not. Ignored if\\noutput format is YAML."
  }
  output {
    File out_stdout = stdout()
    File out_fmt = "${in_fmt}"
  }
}