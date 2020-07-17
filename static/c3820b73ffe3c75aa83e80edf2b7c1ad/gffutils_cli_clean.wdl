version 1.0

task GffutilsCliClean {
  input {
    File filename
  }
  command <<<
    gffutils-cli clean \
      ~{filename}
  >>>
  parameter_meta {
    filename: "GFF or GTF file to use"
  }
}