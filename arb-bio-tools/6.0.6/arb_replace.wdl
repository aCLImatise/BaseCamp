version 1.0

task ArbReplace {
  input {
    Boolean? linemode_parse_line_separately
    Boolean? linemode_parse_line_lines
    Boolean? patchmode_wildcards_allowed
  }
  command <<<
    arb_replace \
      ~{true="-l" false="" linemode_parse_line_separately} \
      ~{true="-L" false="" linemode_parse_line_lines} \
      ~{true="-p" false="" patchmode_wildcards_allowed}
  >>>
  parameter_meta {
    linemode_parse_line_separately: "linemode, parse each line separately"
    linemode_parse_line_lines: "linemode, parse each line separately, delete empty lines"
    patchmode_wildcards_allowed: "patchmode, (no wildcards allowed, rightside<leftside)"
  }
}