version 1.0

task Nohead {
  input {
    String? lines
    String? option
  }
  command <<<
    nohead \
      ~{option} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""}
  >>>
  parameter_meta {
    lines: "suppress NUM lines (default 1)"
    option: ""
  }
}