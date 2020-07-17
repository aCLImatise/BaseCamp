version 1.0

task BamTagOfTagCounts {
  input {
    String? default_g
    String? final_command_line
  }
  command <<<
    BamTagOfTagCounts \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
  }
}