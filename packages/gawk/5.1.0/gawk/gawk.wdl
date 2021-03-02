version 1.0

task Gawk {
  input {
    File? field_separator
    Boolean? characters_as_bytes
    Boolean? e
    Boolean? non_decimal_data
    String? posix
    String? or
    String? gnu
    String? style
  }
  command <<<
    gawk \
      ~{posix} \
      ~{or} \
      ~{gnu} \
      ~{style} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if (characters_as_bytes) then "--characters-as-bytes" else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if (non_decimal_data) then "--non-decimal-data" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gawk:5.1.0"
  }
  parameter_meta {
    field_separator: "=val              --assign=var=val"
    characters_as_bytes: "[file]                --dump-variables[=file]"
    e: "'program-text'       --source='program-text'"
    non_decimal_data: "[file]                --pretty-print[=file]"
    posix: ""
    or: ""
    gnu: ""
    style: ""
  }
  output {
    File out_stdout = stdout()
  }
}