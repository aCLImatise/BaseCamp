version 1.0

task GffutilscliSanitize {
  input {
    Boolean? in_memory
    Boolean? in_place
    File filename
  }
  command <<<
    gffutils_cli sanitize \
      ~{filename} \
      ~{if (in_memory) then "--in-memory" else ""} \
      ~{if (in_place) then "--in-place" else ""}
  >>>
  parameter_meta {
    in_memory: "Load GFF into memory for processing. (default: True)"
    in_place: "Sanitize file in-place: overwrites current file with sanitized\\nversion. (default: False)\\n"
    filename: "GFF or GTF file to use (or GFF database.)"
  }
  output {
    File out_stdout = stdout()
  }
}