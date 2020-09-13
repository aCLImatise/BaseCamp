version 1.0

task GffutilscliClean {
  input {
    File filename
  }
  command <<<
    gffutils_cli clean \
      ~{filename}
  >>>
  parameter_meta {
    filename: "GFF or GTF file to use"
  }
  output {
    File out_stdout = stdout()
  }
}