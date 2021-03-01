version 1.0

task GffutilscliRmdups {
  input {
    Boolean? in_place
    File filename
  }
  command <<<
    gffutils_cli rmdups \
      ~{filename} \
      ~{if (in_place) then "--in-place" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_place: "Remove duplicates in place (overwrite current file.) (default:\\nFalse)\\n"
    filename: "GFF or GTF file to use."
  }
  output {
    File out_stdout = stdout()
  }
}