version 1.0

task GffutilsCliSanitize {
  input {
    Boolean? in_memory
    Boolean? in_place
    File filename
  }
  command <<<
    gffutils-cli sanitize \
      ~{filename} \
      ~{true="--in-memory" false="" in_memory} \
      ~{true="--in-place" false="" in_place}
  >>>
  parameter_meta {
    in_memory: "Load GFF into memory for processing. (default: True)"
    in_place: "Sanitize file in-place: overwrites current file with sanitized version. (default: False)"
    filename: "GFF or GTF file to use (or GFF database.)"
  }
}