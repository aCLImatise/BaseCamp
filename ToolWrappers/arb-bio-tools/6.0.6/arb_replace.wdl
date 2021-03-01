version 1.0

task ArbReplace {
  input {
    Boolean? linemode_parse_line
    Boolean? linemode_parse_lines
    Boolean? patchmode_wildcards_allowed
  }
  command <<<
    arb_replace \
      ~{if (linemode_parse_line) then "-l" else ""} \
      ~{if (linemode_parse_lines) then "-L" else ""} \
      ~{if (patchmode_wildcards_allowed) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    linemode_parse_line: "linemode, parse each line separately"
    linemode_parse_lines: "linemode, parse each line separately, delete empty lines"
    patchmode_wildcards_allowed: "patchmode, (no wildcards allowed, rightside<leftside)"
  }
  output {
    File out_stdout = stdout()
  }
}