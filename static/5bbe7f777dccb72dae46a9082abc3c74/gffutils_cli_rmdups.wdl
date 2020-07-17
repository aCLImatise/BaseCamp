version 1.0

task GffutilsCliRmdups {
  input {
    Boolean? in_place
    File filename
  }
  command <<<
    gffutils-cli rmdups \
      ~{filename} \
      ~{true="--in-place" false="" in_place}
  >>>
  parameter_meta {
    in_place: "Remove duplicates in place (overwrite current file.) (default: False)"
    filename: "GFF or GTF file to use."
  }
}